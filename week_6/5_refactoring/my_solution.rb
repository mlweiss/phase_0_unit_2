# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# My refactored solution.     
#   def check_card
#     sum = 0
#     @num.split("").each_with_index do |digit, index| 
#       digit = digit.to_i
#       if index % 2 == 0
#         sum += (digit*2 >= 10 ? digit*2 % 10 + 1 : digit*2) 
#       else
#         sum += digit
#       end
#     end
#
#     sum % 10 == 0 
#    
#   end

# Original Solution
class CreditCard
	def initialize(card_digits)
		raise ArgumentError.new('Must be a 16 digit number.') unless card_digits.to_s.length == 16
		@card_digits = card_digits

	end


	def check_card
		# Converts the 16 digit number to a string
		# Then splits the string up into an array with each digit occupying a place
		# Then creates a new array by passing the method to_i converted to a Proc
		# to the method map thereby running to_i on each element of the array.
		# A new array is created with integer entries.
		number_array = @card_digits.to_s.split("").map(&:to_i)
		#creates a new array for storing the manipulated digits
	    test_numbers = []
	    # Iterates over each nuber in the array and its index
		number_array.each_with_index do |digit, index|
		    if index % 2 == 0 
				# This is very clever. It was what I was looking to do
				# when I did this challenge. This takes a 1 or 2 digit integer
				# and converts it to a string, then splits it into an array of two 
				# element, then converts each to an integer and creates a new array with 
				# these entries. 		    
	          test_numbers << (digit * 2).to_s.split("").map(&:to_i)
		    else 
		    	# If the index is odd then it just adds the digit as 
		    	# described in the algorithm
		      test_numbers << digit
		    end 
		end
		# This takes test_numbers which is an array of two entry arrays
		# and uses flatten to turn it into an array of integers. 
		# Then inject runs the block and returns total (the element in the 
		# first argument of the vertical bars) plus the initial value
		# specified in the parantheses. In fact this is unnecessary as
		# there is no need for adding 0.

		sum = test_numbers.flatten.inject(0) { |total, index| total += index }	# inject(0) is unnecessary
		# Checks the parity of the ending sum and returns true if 
		# it is divisible by 10 and false if not. In fact the ternary operator
		# is not necessary as the == operator will return true or false already.
		sum % 10 == 0 ? true : false 

	end
end









# Refactored Solution

class CreditCard
	def initialize(card_digits)
		raise ArgumentError.new('Must be a 16 digit number.') unless card_digits.to_s.length == 16
		@card_digits = card_digits

	end


	def check_card
		number_array = @card_digits.to_s.split("").map(&:to_i)
	    test_numbers = []
		number_array.each_with_index do |digit, index|
		    if index % 2 == 0 
	          test_numbers << (digit * 2).to_s.split("").map(&:to_i)
		    else 
		      test_numbers << digit
		    end 
		end

		sum = test_numbers.flatten.inject(0) { |total, index| total += index }	# inject(0) is unnecessary
		sum % 10 == 0 #? true : false is also unnecessary

	end
end







# DRIVER TESTS GO BELOW THIS LINE


#Driver Code

card = CreditCard.new(4408041234567893)
p card.check_card == true 

card = CreditCard.new(4408041234567892)
p card.check_card 



# Reflection 

=begin
I decided to take a code that involved some interesting methods rather than 
taking a confused and messy example. I wanted to learn some new techniques and this one
provided that opportunity. I was previously unfamiliar with the use of the & operator
for converting a method into a Proc. I did some reading into this to understand this.
I didn't know what a Proc was previously and it took some time to understand what it really 
was. What I figured out is that the Proc type is a way of turning a method into an object.
Understanding that I wasn't really sure why I would want to convert a block or method into an 
object. The reason for doing this is so that you can pass methods to another method. 

This is a way of composing methods. This code has an example of this in practice. Doing
array.map(&:to_i) creates a new array via map while calling to_i on each entry in the array.
This is a good method to know and is the starting point for learning more about procs and 
lambdas which is another way of turning a block method into a callable object.

=end