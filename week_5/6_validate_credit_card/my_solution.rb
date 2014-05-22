# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: A 16 digit integer
# Output: class object CreditCard and for the method check card a Boolean true or false.
# Steps:
# Initialization
# 1.) Initialize a credit card class with the argument called num for number.
# 2.) Convert num to a String and then raise an argument error if that string 
# doesn't have a length of 16.
# 3.) Store it as an Instance variable called @num.


# Method: check_card
# 1.) num to an array with split method
# 2.) Use .each_with_index method to check the index and if it is divisible by 
# two and double it.
# 3.) Iterate over each index adding it to the sum if it is less than 10 and
# adding them up and if it is greater than 9 add the ones digit to 1 and then add 
# it to the sum.
# 4.) If the sum is divisible by 10 return true else false.

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits


class CreditCard
  def initialize(num)
    raise ArgumentError.new("Credit Card number should have 16 integers") if num.to_s.size != 16
    @num = num.to_s
  end
    
  def check_card
    sum = 0
    @num.split("").each_with_index {|digit, index| 
      digit = digit.to_i
      if index % 2 == 0 && digit*2 >= 10 
        sum += (digit*2 % 10) + 1 
      elsif index % 2 == 0  
        sum += digit * 2  
      else  
        sum += digit 
      end 
      }
    return sum % 10 == 0 
    end
end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
