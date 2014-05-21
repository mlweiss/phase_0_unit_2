# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# Input is an integer between 0 and 10^9 exclusive. TODO: Is this true?
# What is the output? (i.e. What should the code return?)
# Output is a string containing the integer with a comma separating every three digits starting
# from the tens digit.
# What are the steps needed to solve the problem?
# There should be a way to do this in a line or two using 
# regular expressions and string methods, but the instructions say that
# this is all about logic, so the code will look at the magnitude of the number
# 1.) Determine magnitude of the number
# 2.) Insert the commas
# 3.) Return the number

# 2. Initial Solution

def separate_comma(num)
	magnitude = Math.log10(num)	
	if magnitude < 3
		return num.to_s
	elsif magnitude < 6
		return (num.to_s.insert(-4, ','))
	elsif magnitude < 9
		return (num.to_s.insert(-4, ',').insert(-8, ','))
	end
end

puts separate_comma(1000)
# 3. Refactored Solution



# 4. Reflection 