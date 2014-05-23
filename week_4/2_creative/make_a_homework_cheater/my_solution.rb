# U2.W4: Homework Cheater!


# I worked on this challenge by myself

# 2. Pseudocode

#

# Input: A painting object, the name of the auction house, 
# 
# Output:
# Steps:


# 3. Initial Solution


def essay_writer(title, thesis, painter_name, year_birth, place_of_birth, major_painting, art_movement, pronoun)
	puts "#{title} \n 
	Have you ever heard of #{painter_name}? #{pronoun.capitalize} was born in #{year_birth} and was the greatest painter to 
	ever come out of #{place_of_birth}. 
	What is most important to know is that 
	#{thesis}.
	#{painter_name.capitalize} was an integral part of #{art_movement} and painted #{major_painting}.
	#{painter_name.capitalize} will go down in history as one of the best painters ever. \n
	"
end

# 4. Refactored Solution


def essay_writer(title, thesis, painter_name, year_birth, place_of_birth, major_painting, art_movement, pronoun)
	puts "#{title} 
	Have you ever heard of #{painter_name}? #{pronoun.capitalize} was born in #{year_birth} and was the greatest painter to 
	ever come out of #{place_of_birth}. 
	What is most important to know is that 
	#{thesis}.
	#{painter_name.capitalize} was an integral part of #{art_movement} and painted #{major_painting}.
	#{painter_name.capitalize} will go down in history as one of the best painters ever. 
	"
end
# Removed the new lines, as I found out that puts are uses a new line if it is on a new line.




# 1. DRIVER TESTS GO BELOW THIS LINE

essay_writer('Picasso the Great', 'Picasso was a visionary who forever changed the art world', 'Picasso', 1881, \
	'Malaga, Spain', 'Guernica', 'cubism', 'he')
essay_writer('Malevich Completes the Square', 'abstract art is often misunderstood, but important', 'Malevich', \
	1879, 'Kiev, Ukraine', 'Black Square', 'Geometric abstraction', 'he')
essay_writer('Where Did My Van Gogh?', "Van Gogh was not popular in his lifetime but due to the dedicated work of his family he is well known today" \
	, 'Van Gogh', 1853, 'Zundert, Netherlands', 'The Starry Night', 'Post-Impressionism', 'he')



# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# I found that I did not like the way the output looked. I am still looking for a solution to this.
# I also think that it is important to have a good sense of humor in these exercises and
# it was my intention to make the entries lightly amusing.
# What questions did you have while coding? What resources did you find to help you answer them?
# I think that making the output look nice is a real challenege in this exercise. I also found that
# making the code look nice when the list of arguments was so long was also a bit of a challenge.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# The above were new to me.
# Did you learn any new skills or tricks?
# Not yet, but I am hoping to come back to this to fix up the output.
# How confident are you with each of the Learning Competencies?
# I feel pretty confident with the learning competencies, though I noticed that
# I did not use a lot of the methods metnioned, like if/else statements and enumerable methods for this
# exercise.
# Which parts of the challenge did you enjoy?
# I enjoyed looking up some things about these painters and writing the stories.
# Which parts of the challenge did you find tedious?
# I felt messing with the output wasn't a lot of fun.
