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



# 4. Reflection 