# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode

=begin
	DEFINE initialize object for Pez
		SET flavor variable to input flavor variables 
		SET number of Pez variable to number of input
			flavors
	DEFINE method to check number of candies
		RETURN number of Pez candies variable
	DEFINE remove pez method
		REMOVE one pez by subtracting from flavor variable
	DEFINE add pez method
		ADD flavor to Pez variable
	DEFINE check flavor method
		RETURN the flavors array
	
	Class PezDispenser
	Methods: 
		initialize 
			Input: Flavors
			Output: None
		pez_count
			Input: None
			Output: Length of flavors array
		add_pez
			Input: Flavor
			Output: None
		get_pez
			Input: None
			Output: Flavor at end of list
		see_all_pez
			Input: None
			Output: List of currently stored flavors
=end
# 3. Initial Solution

class PezDispenser
	def initialize(flavors)

		@flavors = flavors

	end


	def pez_count

		return @flavors.length

	end
 	

 	def add_pez(flavor)

 		return @flavors.push(flavor)

 	end


 	def get_pez

 		return @flavors.pop

 	end


 	def see_all_pez

 		return @flavors

 	end

end
 


# 4. Refactored Solution


=begin
	I initially had a number of print statements to alert the user
	of the consequence of the method that they had just called, but
	I realized that this ended up being rendudant with the Driver Code.
	I think in general however, if it weren't necessary to make the code
	conform to the given driver code, I would have some print statements
	to make the program a bit more user friendly.
=end

# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "Assertion Error" unless yield
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
assert {super_mario.see_all_pez == flavors}
puts super_mario.see_all_pez
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
assert {super_mario.pez_count == 10}
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
assert {super_mario.pez_count == 9}
puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection 

=begin
I initially had some trouble thinking of what the driver code should include, 
but I decided to just have it verify the existing code more or less. My problems
in writing this exercise mostly stemmed from some small bugs and mental mistakes.
I also had to review whether pop and push act from the left side or the right
side of an array (the answer is the right).

Writing the PseudoCode helped make this exercise go a lot faster. Usually when writing
a program I like to keep track of the input and output, but this time it was not 
too complicated so it seemed a bit unnecessary. 
=end