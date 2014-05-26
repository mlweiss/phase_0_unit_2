# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode
=begin
	

	

# Input: An initialized class, GuessingGame, taking a positive integer as an argument
# Output: A guess method which outputs a symbol (:high, :low, or :correct)
		A solved method which outputs a Boolean
# Steps: INITIALIZE a GuessingGame class which takes an argument answer
		SET internal instance variable answer to user initiated answer
		SET internal instance variable guess to nil
		SET internal instance variable solved to false
	DEFINE guess instance method that takes integer as argument 
		RAISE error if argument isn't an integer
		SET guess to argument
		CHECK if answer is equal to guess
		RETURN :correct if answer is equal to guess
		RETURN :high if answer < guess and :low if answer > guess
	DEFINE solved? instance method that has no arguments
		RETURN true if guess is equal to answer
=end
# 3. Initial Solution

class GuessingGame
  attr_reader :guessed	
  attr_reader :answer
  def initialize(answer)

	raise ArgumentError.new("We need to guess an integer!") unless answer.is_a? (Integer)

	@answer = answer
	@guessed = nil

  end
  
  def guess(num)

  	raise ArgumentError.new("You should guess a positive integer!") unless num.is_a? (Integer)
  	@guessed = num
  	
  	
  	return :correct if @guessed == @answer 
  	(@guessed < @answer) ? :low : :high

  end

  def solved?
  	return @guessed == @answer	
  end
end



# 4. Refactored Solution


# I decided to leave most of the code intact. 



# 1. DRIVER TESTS GO BELOW THIS LINE

test_game = GuessingGame.new(10)

# Test number of arguments of initialize method
p GuessingGame.instance_method(:initialize).arity == 1
# Test existence of guess method
p GuessingGame.method_defined?(:guess)
# Test number of arguments of guess method
p GuessingGame.instance_method(:guess).arity == 1
test_game.guess(2)
# Test that an incorrect guess does not solve game
p test_game.solved? == false
test_game.guess(10)
# Test that a correct guess solves the game
p test_game.solved? == true
# Test that a subsequent incorrect guess unsolves the game
test_game.guess(2020)
p test_game.solved? == false



def play_game(guess_game)
	until guess_game.solved?
		puts "Try to guess a secret number between 1 and #{guess_game.answer + rand(100)}!" if guess_game.guessed == nil
		puts "Take another guess at the secret number!" if guess_game.guessed
		new_guess = gets.chomp.to_i
		puts "Your guess is too #{guess_game.guess(new_guess)}" if guess_game.guess(new_guess) != :correct
	end
	puts "Your guess is correct! You solved the game!"
end

test_game = GuessingGame.new(rand(400))
play_game(test_game)

# 5. Reflection 
=begin

I enjoyed working through this challenge. Especially writing the play_game code.
Through the course of writing the program I had to look up a few methods. 
At first I couldn't figure out why I couldn't access internal instance variables. 
Some google searching led to the :attr_reader variable. 

I also had some trouble initially when I had a @guess variable and a guess method.
I eventually changed the name fo the @guess variable so I could access both of them.
	
	
=end