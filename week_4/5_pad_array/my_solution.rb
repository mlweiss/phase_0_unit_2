# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# Input is a non-negative integer to denote the minimum size
# and an optional pad value. It is an Array method, so also
# in spirit the array is also input.
# What is the output? (i.e. What should the code return?)
# Output is a padded array.
# What are the steps needed to solve the problem?
# 1.) Check the minimum size
# 2.) Pad the array so that it equals the minimum size
# 2.) possibly with the optional pad value.

# 2. Initial Solution
class Array
	def pad(min_size, padding = nil)
		copy = Array.new(self)
		return (min_size - self.size) > 0 ? copy + Array.new(min_size - self.size, padding) : copy
	end

	def pad!(min_size, padding = nil)
		return (min_size - self.size) > 0 ? self.concat(Array.new(min_size - self.size, padding)) : self
	end

end


# 3. Refactored Solution
class Array
	
	def pad(min_size, padding = nil)
	 	return self + Array.new([0, min_size - self.size].max, padding)
	end

	def pad!(min_size, padding = nil)
		return self.concat(Array.new([0, min_size - self.size].max, padding))
	end
end


# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# I ran into some trouble creating a destructive and non-destructive methods. It at first didn't
# seem logical that the ids should not match for the first method and match for the second method.
# Of course now it doesn't seem like it could be any other way. But before I imagined that 
# the non-destructive method should return the same array if it didn't do anything to it. 
# I also tried to make the code as short as possible. When I thought about refactoring I recalled
# that I could just take the maximum between 0 and the min_size - self.size. This makes the code
# only one line as I had hoped. I also feel it is very readable now.
# What questions did you have while coding? What resources did you find to help you answer them?
# I had to look up how to create an optional variable that had a default value. 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Writing non-destructive and destructive methods was new to me. It is also nice to know that there
# are two concatenation methods: '+' which is non-destructive and '.concat()' which is destructive.
# Did you learn any new skills or tricks?
# I learned the .max trick which I think will be helpful. I also learned the optional variable 
# syntax for Ruby.
# How confident are you with each of the Learning Competencies?
# Confident
# Which parts of the challenge did you enjoy?
# Writing the code.
# Which parts of the challenge did you find tedious?
# Not tedious.