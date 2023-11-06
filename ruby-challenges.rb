system('clear')
# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

def aplha_states(hash)
# Use the built in method 'flatten' to change a nested array into a single new array.
    arr = hash.values.flatten
# Use '.sort' to sort the values in alphabetical order
    new_arr = arr.sort
#Return the sorted_values array
    return new_arr
  end

p aplha_states(us_states)
#Output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code: ^^^

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Create a class called Bike
  

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code: 
# Create a class called Bike
# Create a method to initalize the properties for model, wheels, and current_speed
# Initalize them
#
#

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

class Bike
    # Create a constructor method to initalize the properties for model, wheels, and current_speed
        def initialize(model, wheels = 2, current_speed = 0)
            # Initalize the properties
          @model = model
          @wheels = wheels
          @current_speed = current_speed
        end
      #Create a method that uses string interpolation to call on the properties of the class.
        def bike_info
          "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
        end
        #Create a method to increase the speed
        def pedal_faster(speed_increase)
        #Have the current spped + the input speed to increase    
            @current_speed += speed_increase
            @current_speed
          end
        #Create a method to decrease the speed
          def brake(speed_decrease)
        #Have the current speed - the input speed to decrease 
            @current_speed -= speed_decrease
        #Have the current speed = 0 if it tries to/ goes below 0 to avoid negative integers
            @current_speed = 0 if @current_speed < 0
            @current_speed
          end
      end
      #Create a new instance of the class and call on it 
      my_bike = Bike.new("Trek")
      puts my_bike.bike_info 
      # Output: 'The Trek bike has 2 wheels and is going 0 mph.'

      puts my_bike.pedal_faster(10) 
      # Output: 10
# Expected output example: my_bike.pedal_faster(10) => 10
puts my_bike.pedal_faster(18)
 # Output: 28
# Expected output example: my_bike.pedal_faster(18) => 28
puts my_bike.brake(5) 
  # Output: 23
# Expected output example: my_bike.brake(5) => 23
puts my_bike.brake(25)
     # Output: 0
# Expected output example: my_bike.brake(25) => 0

# Pseudo code: ^^^