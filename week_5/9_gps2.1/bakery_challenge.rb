# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Quy Tran
# 2) Michael Weiss

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}  # Initilize the food and the quantity 
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false # Initialize favourite food varibale

  # Iterate through the list and check if there is a key in the hash my_list that matches the fav_food
  my_list.each_key do |k| 
    if k == fav_food
      has_fave = true
      fav_food = k
    end
  end
  
  # Raise an error with a message if no food is matched
  if has_fave == false
    raise ArgumentError.new("You can't make that food")
  else
    fav_food_qty = my_list.values_at(fav_food)[0] # Find the serving size of the fav_food
    # If the number of people is a multiple of the serving size determine the quantity of food 
    # needed
    if num_of_people % fav_food_qty == 0
      num_of_food = num_of_people / fav_food_qty
      return "You need to make #{num_of_food} #{fav_food}(s)."
    
    else num_of_people % fav_food_qty != 0 # This is not really needed.
      while num_of_people > 0 # This while loop might not be necessary
        if num_of_people / my_list["pie"] > 0 # This conditional is unnecessary
          pie_qty = num_of_people / my_list["pie"] # determines the pie quantity
          num_of_people = num_of_people % my_list["pie"] # Remove the people that have been served with pies
        elsif num_of_people / my_list["cake"] > 0 # This conditonal is also unnecessary
          cake_qty = num_of_people / my_list["cake"] # determines the cake quantity
          num_of_people = num_of_people % my_list["cake"] # Removes the people that have been served with cakes
        else # We should remove this else
          cookie_qty = num_of_people # The remaining people are served with cookies
          num_of_people = 0 # breaks out of the loop
        end
      end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)." # This prints the needed quantities
    end
  end
end
 

#-----------------------------------------------------------------------------------------------------
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
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 