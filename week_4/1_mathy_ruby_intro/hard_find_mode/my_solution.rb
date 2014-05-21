# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# The input is an Array of Strings or real numbers.
# What is the output? (i.e. What should the code return?)
# The output should be the mode of the list. In the case of numbers this should be the most
# common occuring number and in the case of strings, the most common string.
# What are the steps needed to solve the problem?
# The code should somehow determine the amount of times a particular element occurs in the list.
# Then it should determine which element appears most frequently by comparing these amounts. 
# If two or more of the amounts are the same then a list of the elements with this amount should
# be returned.

# 2. Initial Solution
def mode(ary)
	i = 1
	mode = []
	ary.each do |element|
		j = ary.count(element) 
		if j > i 
			i = j
			mode = [element]
		elsif j == i && !mode.include?(element)
			mode += [element]
		end
	end
	return mode
end

a = mode([4, 4, 5, 5, 6, 6, 6, 7, 5])
print a




# 3. Refactored Solution



# 4. Reflection 