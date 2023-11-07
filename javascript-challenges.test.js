// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.


describe ("decode", (string) => {
    it("takes in a string and returns a string with a coded message. The coded message converts a to 4, e to 3, i to 1, and to 0.", () => {
      expect(decode("Lackadaisical")).toEqual("L4ck4d41s1c4l")
      expect(decode("Gobbledygook")).toEqual("G0bbl3dyg00k")
      expect(decode("Eccentric")).toEqual("3cc3ntr1c")
    }
    )}
  )
  //Output: Good Fail
  //ReferenceError: decode is not defined

const secretCodeWord1 = "Lackadaisical"    
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

// b) Create the function that makes the test pass.

const decode = (string) => {
    // Create an empty string to store the decoded result
    let decodedString = ''
    // Loop through each character in the input string
    for (let i = 0; i < string.length; i++) {
        // Creat a const to single out each letter using the index
        const letter = string[i]
        // Use a conditional to have the desired number be retunred when the desired letter is indexed.  
        if (letter === 'a') {
            // Use the Addition assignment operator '+=' to have the const decodedString now equal the original string with the letters replaced.  
          decodedString += '4'
          //Repeat
        } else if (letter === 'e') {
          decodedString += '3'
        } else if (letter === 'E') {
            decodedString += '3'
        }else if (letter === 'i') {
          decodedString += '1'
        } else if (letter === 'o') {
          decodedString += '0'
        } else {
          decodedString += letter
        }
      }
    
      return decodedString
    }

// Pseudo code: ^^^

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

describe ("poker", (string) => {
    it("takes in an array of 5 numbers and determines whether or not the array is a full house.", () => {
      expect(poker([5, 5, 5, 3, 3])).toEqual(true)
      expect(poker([5, 5, 3, 3, 4])).toEqual(false)
      expect(poker([5, 5, 5, 5, 4])).toEqual(false)
      expect(poker([7, 2, 7, 2, 7])).toEqual(true)
    }
    )}
  )
//Output: Goodfail
//ReferenceError: poker is not defined


const arr1 = [5, 5, 5, 3, 3]
// Expected output: true
const arr2 = [5, 5, 3, 3, 4]
// Expected output: false
const arr3 = [5, 5, 5, 5, 4]
// Expected output: false
const arr4 = [7, 2, 7, 2, 7]
// Expected output: true

// b) Create the function that makes the test pass.

const poker = (arr) => {
    // Sort the array to group same numbers together
arr.sort()
// Use a conditional to check each index within the array
if (
    (arr[0] === arr[1] && arr[3] === arr[4] && (arr[0] === arr[2] || arr[3] === arr[2])) ||
    (arr[0] === arr[2] && arr[3] === arr[4] && arr[0] === arr[4])
  ) {
    //so that if the first 2 number are the same, or the first and third number are the same (one must be true in a set of 5 for their to be a full house) to return true. If not return false.
    return true
  } else {
    return false
  }
}

// Pseudo code: ^^^
