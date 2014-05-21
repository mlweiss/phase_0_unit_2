# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself

# 1. Pseudocode

# What is the input?
# The input is an array of real numbers or strings.
# What is the output? (i.e. What should the code return?)
# The output is the median of the numbers with respect to the natural order on the real numbers
# or in the case of strings the median of the 'words' with respect to the alphabetical order
# on the alphabet.
# What are the steps needed to solve the problem?
# 1.) The parity of the number of items in the list is determined.
# 2.) The list needs to be sorted with respect to the order.
# 3.) If the list is odd return the middle element of the list.
# 3.) If the list is even return the mean of the two middle elements.
# 4.) If the list contains strings and the size is even then returns middle two strings.
# Note: Need to think of a definition of the mean of two strings. However this may 
# not return a meaningful result.

# 2. Initial Solution

def median(my_array)
	length = my_array.size

	raise "Median not defined for an empty list" unless length != 0
	raise "Array should contain strings or numbers" unless my_array[0].class === ("String" || "Fixnum") || "Float"

	if (length % 2 == 0)
		if my_array[0].class === 'String'
			return (sorted_array[length/2 -1] + ' ' + sorted_array[length/2]) #returns middle two strings
		else 
			return (sorted_array[length/2 - 1] + sorted_array[length/2]).to_f / 2 # returns the mean 
		end																			# of the middle two numbers					
	else																		
		return (sorted_array[length/2])
	end
end


# 3. Refactored Solution

def median(my_array)
	length = my_array.size
	sorted_array = my_array.sort
	raise "Median not defined for an empty Array { iii }" unless length != 0
	raise "Array should contain strings or numbers" unless my_array[0].class === ("String" || "Fixnum") || "Float"

	if (length % 2 == 0)
		if my_array[0].class === 'String'
			return (sorted_array[length/2 -1] + ' ' + sorted_array[length/2]) 
		else 
			return (sorted_array[length/2 - 1] + sorted_array[length/2]).to_f / 2 
		end																			
	else																		
		return (sorted_array[length/2])
	end
end



# 4. Reflection 