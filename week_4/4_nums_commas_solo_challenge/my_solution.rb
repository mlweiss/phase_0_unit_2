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

# 3. Refactored Solution
# This is a pretty simple algorithm. I realized that the way I constructed it, it would
# only work to pass the tests. I knew this constructing it (and wrote in the pseudo code
# that this program is intended for certain sizes) but I think that using
# a while loop will actually be better for this exercise as it now can handle any 
# sized number.

def separate_comma(num)
	magnitude = Math.log10(num)
	i = 1
	num_string = num.to_s
	while magnitude > 3 
		num_string.insert(-4*i, ',')
		i += 1
		magnitude -= 3 
	end
	return num_string
end

puts separate_comma(32567808765489)
# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# I at first tried to do something using string methods, but realized that 
# it was not in the spirit of the assignment, so switched to a logical mathematical
# structure for solving it. I had to look up the code for using the base 10 logarithm
# and spent a little bit of time figuring out the insert method.

# What questions did you have while coding? What resources did you find to help you answer them?
# I used the Ruby documentation a lot to look through possible methdos that might be useful in this
# exercise. I was hoping to find something that could insert a comma in between every third number.
# I was hoping there would be a string method that could work recursively, but did not find one.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I was surprised that I did not immediately think of the while loop method. It was only while
# writing the reflection above that I realized that it would be much better for this purpose.

# Did you learn any new skills or tricks?
# I liked the string method insert and now I know how to make it count forward and backward.

# How confident are you with each of the Learning Competencies?
# Yes

# Which parts of the challenge did you enjoy?
# I liked thinking about the challenge.

# Which parts of the challenge did you find tedious?
# Nothing tedious here.