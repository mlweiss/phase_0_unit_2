# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# This code creates a class called Die that takes an array as an argument
# for the labels of the sides. It has two methods, one that prints the number
# of sides and another that rolls the die.
# Input: Number of sides
# Output: A Die class object
# Steps: 1.) Initialize Die with an array of letters given by argument labels
# 2.) Write a method that returns the number of sides
# 3.) Write a method that returns a roll of the die.



# 3. Initial Solution

class Die
  def initialize(labels)
  	raise ArgumentError.new('Die should have at least one side') if labels.length < 1
  	@sides = labels
  end

  def sides
  	return @sides.length
  end

  def roll
  	return @sides.sample
  end
end



# 4. Refactored Solution

#There wasn't much to change as the code was four lines or so.



# 1. DRIVER TESTS GO BELOW THIS LINE



labels = ('A'..'Z').to_a
die = Die.new(labels)
p Die.instance_method(:initialize).arity == 1 # Die.intialize should have 1 argument
p Die.instance_method(:sides).arity == 0 # Die.sides should have 0 arguments
p Die.instance_method(:roll).arity == 0 # Die.roll should have 0 arguments
p die.sides == labels.size # Number of sides should equal input number of sides

unique_rolls = Array.new(1000) { die.roll }.uniq.sort 
p unique_rolls == labels # Is the rolling of the die random?





# 5. Reflection 

# What parts of your strategy worked? What problems did you face?

# I read some of the provided materials about writing new classes. Writing the code for the class
# was pretty simple. But I had trouble translating the argument errors to driver code. Then I looked
# up the methods instance_method which returns an array 
# What questions did you have while coding? What resources did you find to help you answer them?
# I was a bit fresh on the concepts involved here. Especially the rewriting of the driver code to
# check for the number of arguments of a given method. The .instance_method and .arity combination
# is one that I will have to remember. I will need to learn what each is doing to really understand
# remember this well.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I am still not sure exactly what is being returned by the .instance_method method. I am not
# sure how to interpret #<UnboundMethod: Die#roll>, why is it an Unbound Method? What is an Unbound Method?
# I read the Ruby docs, but they don't really explain what their examples are doing. I'll have to 
# take a closer look at some point.
# Did you learn any new skills or tricks?
# The argument error driver code was new. The syntax for writing class methods was also new.
# How confident are you with each of the Learning Competencies?
# Breaking down problems into implementable pseudocode was pretty easy for this exercise. I felt pretty confident
# though I still need to understand what is going on in this driver code.
# Which parts of the challenge did you enjoy?
# I enjoyed writing the checks on the code.
# Which parts of the challenge did you find tedious?
# This was a tedious exercise to be honest. It was just a copy paste of the first exercise.