# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.


# Prompt - Create a script that processes votes for multiple items. Given a list of votes, make sure to standardize them (convert to lowercase), then compute and record the vote count for each item in a data structure like a dictionary or hash. Finally, display the tally of votes for each item.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

# Initialize a 'totals' variable as a result of reducing the 'taco_votes' array to a hash.
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  # Convert each vote to lowercase and use it as a key in the hash. Increment the corresponding value (vote count).
  result[vote.downcase] += 1
  # Return the updated hash.
  result
end
# Print the resulting 'totals' hash, which shows the vote counts for each type of taco.
p totals   