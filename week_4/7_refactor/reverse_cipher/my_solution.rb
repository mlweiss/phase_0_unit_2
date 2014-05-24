# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a # creates an array ['a', 'b', ... , 'z']
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # creates a hash [['a', 'e'], ['b', 'f'], ...]
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # stores the spaces charatcer in an array
     
    original_sentence = sentence.downcase # puts all the letters in the sentence as lower-case
    encoded_sentence = [] # creates empty array for the encoded sentence
    original_sentence.each_char do |element| # iterates over the characters in array
      if cipher.include?(element) # checks if element is in the cipher hash
        encoded_sentence << cipher[element] # adds the value associated to the key element
      elsif element == ' ' # checks if there is a space in the sentence
        encoded_sentence << spaces.sample # adds a random element from spaces 
      else # if it is neither a space nor a letter
        encoded_sentence << element # adds the element without coding it.
      end
     end
    
    return encoded_sentence.join # returns the encoded sentence after turning the array into a string.
end


# Questions:
# 1. What is the .to_a method doing?
# .to_a sends the expression 'a'..'z' to an array of the 26 letters in the English alphabet.
# It is not however clear to me what ('a'..'z') is. Is it a string? I tried determining 
# the class with Ruby but to no avail.

# 2. How does the rotate method work? What does it work on?
# .rotate(arg) shifts the array by the number of steps given by the integer arg. For instance +4 
# shifts the alphabet forward by 4 steps. 

# 3. What is `each_char` doing?
# each_char iterates through each character in the string original sentence.

# 4. What does `sample` do?
# .sample is an Array class method that returns a random element from the array.

# 5. Are there any other methods you want to understand better?
# zip would be a good method to know. As far as I understand zip is an Array class method
# that takes as an argument an array with the same size and creates a third array
# that is an array of size two arrays composed of the elements whose indices match.

# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# I think this code looks very similar to my refactored solution. It differs in two ways, 
# one significant and the other minor. The significant difference is that in my code
# I used an array to implement the cipher, just shifting it as needed, thus avoiding the 
# need to create a hash. However I am not sure that this is more efficient as it requires 
# the use of a search (alphabet.index(character)) to find the element in the array. 
# The minor difference is that I split the original sentence string into an array at the beginning.
# It would be better to do this like the refactored code here.

# 7. Is this good code? What makes it good? What makes it bad?
# This is good code. It is clean, short, and readable. I think the use of a hash to implement
# the cipher is unnecessary, but it makes the code cleaner, and since speed and efficiency is not
# the main priority here this is fine.

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")

# This does not return the same thing every time due to the use of the .sample
# method on the array spaces.



# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# I reviewed the code and tried to determine the differences. It looks like
# our code is very similar
# What questions did you have while coding? What resources did you find to help you answer them?
# This exercise did not require any coding.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# This seemed to be pretty straightforward.
# Did you learn any new skills or tricks?
# The .sample, .zip, and . each_char methods were new to me and I was glad to see their
# function presented in this exercise.
# How confident are you with each of the Learning Competencies?
# I am very confident with these competences.
# Which parts of the challenge did you enjoy?
# I enjoyed reviewing the code and seeing a clean version of this.
# Which parts of the challenge did you find tedious?
# Nothing too tedious.
