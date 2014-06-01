# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode
=begin
get_row
	ACCESS nth array in array of arrays
	RETURN this array

get_col
	ACCESS

=end
# 3. Initial Solution
class BoggleBoard
 
 	def initialize(board)
 		@board = board
 	end

	def get_row(row)
		return @board[row]
	end

	def get_col(col)
		unless col <= @board.length && col >= 0
			raise ArgumentError.new('Column number is not within accepted range') 
		end	

		return @board.map {|row| row[col]}
	end

	def create_word(*coords)
		coords.map {|coord| @board[coord.first][coord.last]}.join("")
	end
 	
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution
=begin
There isn't much to refactor here. Most of the methods
are reused from a previous exercise where they were pretty
well refactored.	
	
=end




# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
def assert
	raise "Assertion Failed!" unless yield
end

assert {boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) === 'dock'} # => 'dock'

# Get Col
assert {boggle_board.get_col(0).join('') == 'biet'}
assert {boggle_board.get_col(1).join('') == 'roca'}
assert {boggle_board.get_col(2).join('') == 'adlk'}
assert {boggle_board.get_col(3).join('') == 'etre'}

# Get Row
assert {boggle_board.get_row(0).join('') == 'brae'}
assert {boggle_board.get_row(1).join('') == 'iodt'}
assert {boggle_board.get_row(2).join('') == 'eclr'}
assert {boggle_board.get_row(3).join('') == 'take'}

# Access (3,2) element
assert {boggle_board.create_word([3,2]) === 'k'}

# 5. Reflection 

=begin
The implementation varies in a small way. The methods take fewer objects as they 
are called by appending them to the board call itself. Aside from having the possibility
to create random boggle boards through the initialize method, I am not sure
what the benefits are yet of the Object-Oriented approach to this problem. The 
amount of code is essentially the same and nothing is really streamlined, though
I imagine for more complicated problems it is likely to be more useful.

I will come back soon to finish the diagonal method.

=end