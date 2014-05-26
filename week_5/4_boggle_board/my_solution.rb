# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself]

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# INPUT: A two dimensional array and a list of coordinates
# OUTPUT: The an array with the entries in the 2dim array corresponding 
#			to the coordinates
=begin			
 STEPS: DEFINE access_element method
		ITERATE over coordinates 
		CREATE a new array with the board entries corresponding to the
			coordinates
=end
# Initial Solution
def access_element(board, *coords)
	coords.map { |coord| board[coord.first][coord.last]}
end
# Refactored Solution
# This was more or less given

# DRIVER TESTS GO BELOW THIS LINE
# Code returns ['c', 'a', 'k', 'e']
p access_element(boggle_board, [2,1], [0,2], [3,2], [3,3]) == ['c', 'a', 'k', 'e']

# Reflection 
=begin
	
This portion of the code was essentially given to us, so the challenge 
was to write a satisfactory pseudocode. 
	
=end

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
=begin

get_row
INPUT: A row number in a 2 dimensional array
OUTPUT: The row in the 2 dimensional array corresponding to the row number
Steps: 
	RAISE ArgumentError if argument is not a non negative integer 
		and is greater than the number of rows.
	RETURN an array composed of the elements in the row

=end
# Initial Solution

def get_row(board, row)
	return board[row]
end


# Refactored Solution
# Added argument error for invalid row argument.
def get_row(board, row)
	unless row <= board.length && row >= 0
		raise ArgumentError.new('Row number is not within accepted range') 
	end	

	return board[row]
end



# Pseudocode
=begin

get_row
INPUT: A column number indicating a column in a 2 dimensional array
OUTPUT: The column from the 2 dimensional array corresponding to the column number
Steps: 
	RAISE ArgumentError if argument is not a non negative integer 
		and is greater than the number of columns.
	ITERATE through the elements of the array as rows
	CREATE a new array from the elements in each row corresponding to the
		index given as the column argument

=end
# Initial Solution

def get_col(board, col)
	return board.map {|row| row[col]}
end


# Refactored Solution
# Added argument error for invalid row argument.
def get_col(board, col)
	unless col <= board.length && col >= 0
		raise ArgumentError.new('Column number is not within accepted range') 
	end	

	return board.map {|row| row[col]}
end

# DRIVER TESTS GO BELOW THIS LINE
p get_row(boggle_board, 2) == ["e", "c", "l", "r"]
p get_row(boggle_board, 3) == ["t", "a", "k", "e"]
p get_col(boggle_board, 3) == ["e", "t", "r", "e"]
p get_col(boggle_board, 2) == ["a", "d", "l", "k"]

# Reflection 

=begin
I found that as always the hardest part of this exercise was describing exactly
step by step what the code was doing in the Pseudocode. I think that this will
be something that I will have to work on further. It is a lot easier to just 
remember a method and use it. To actually have an understanding of what is 
going on and write code quickly I will need to spend a little more time on 
the planning portion.	


=end

