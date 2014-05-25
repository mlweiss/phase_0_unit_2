# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Quy Tran

# Our Refactored Solution

def bakery_num(num_of_people, fav_food)
  food_servings = {"pie" => 8, "cake" => 6, "cookie" => 1}  # Initialize the food and the quantity 
  fav_food_qty = food_servings[fav_food] 
    
  raise ArgumentError.new("You can't make that food") if !food_servings.has_key?(fav_food)
  
  if num_of_people % fav_food_qty == 0
    num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
  else 
    food_qty = food_servings.clone
    # First make favorite food
    food_qty[fav_food] = num_of_people / food_servings[fav_food]
    num_of_people %= food_servings[fav_food]
  	food_servings.delete(fav_food)		
  	# Now servings for the rest
    food_servings.each_key do |key| 
      break if num_of_people == 0 # this isn't really necessary with 3 keys, but with more it would be.
      food_qty[key] = num_of_people / food_servings[key]
      num_of_people %= food_servings[key]
    end
    return "You need to make #{food_qty["pie"]} pie(s), #{food_qty["cake"]} cake(s), and #{food_qty["cookie"]} cookie(s)." # This prints the needed quantities
  end
end

#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." 




#  Reflection 
# What parts of your strategy worked? What problems did you face?
# Writing what each part of the code did helped some. We were able to eliminate blocks of code
# and rewrite them quickly just by reading the comments that we had written. After editing out all
# of the superfuous parts, we decided we wanted to optimize the code a little bit more, so we
# we implemented another hash. This took a little bit of separate work, but eventually we came to 
# a solution that we were happy with.
# What questions did you have while coding? What resources did you find to help you answer them?
# We had a few questions about the exercise. Then we had some some questions about raising argument
# errors. We raised these questions with our guide and he helped us figure out what was necessary.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I think most of this was pretty familiar.
# Did you learn any new skills or tricks?
# I hadn't thought of using a hash for the implementation but this method worked quite well.
# How confident are you with each of the Learning Competencies?
# Identifying and explaining the code went well. I think that I was a little to explicit but we eventually
# reached a happy medium. Rewriting code to be smaller is something I generally enjoy doing so 
# that felt natural and using Ruby methods is already very familiar.
# Which parts of the challenge did you enjoy?
# I always like condensing code and seeing it become more efficient.
# Which parts of the challenge did you find tedious?
# I guess reading through bad code is always tedious.