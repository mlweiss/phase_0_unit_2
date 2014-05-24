# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
# This code returns all elements in an array 'ary' that contain the letter.
# Input: An array, a letter
# Output: An array with elements from the array containing the letter
def my_array_finding_method(ary, letter)
	
	if !letter.is_a?(String)
		raise ArgumentError.new('The Second Argument Should be a String')
	end
	return ary.find_all {|element| element.include?(letter) if element.is_a?(String)}
end

# This method returns an array containing all keys in a Hash that have a 
# given Fixnum value, number.
# Input: A Hash and a Fixnum number
# Output: An Array containing keys in the Hash that have the value Fixnum

def my_hash_finding_method(my_hash, number)
	
	if !number.is_a?(Fixnum)
		raise ArgumentError.new('The Second Argument Should be a Fixnum')
	end

	return my_hash.select {|key, value| value == number}.keys
end

# Identify and describe the ruby method you implemented. 
# I used the .find_all method for the first problem. This searches through an Array
# to find all values that have the property in the curly brackets. 
# I used the .select method for Hashes which returns a hash with the given
# pairs such that the statement in the block is true.

# Person 2
# This method adds a number to all numbers in an array
# Input: An array and an integer
# Output: An array with all numbers modified by the input integer
def my_array_modification_method(ary, number)
	if !number.is_a?(Fixnum)
		raise ArgumentError.new('The Second Argument Should be a Fixnum')		
	end

	return ary.collect! {|element| element.is_a?(Fixnum) ? (element + number) : element}

end

def my_hash_modification_method(my_hash, number)
	return my_hash.each_pair {|key, value| my_hash[key] = value + number}
end

# Identify and describe the ruby method you implemented. 
# I used the collect method to create a new array with the values coming from the expression
# in the block. Note that map would also have the same exact output.
# Here I used the each_pair iterator to iterate over the key value pairs. Since all values
# are numbers I can just add the number to them.


# Person 3
# This method sorts all the elements of an array starting with numbers
# and then with strings. The numbers are sorted in numerical order
# and the letters in alphabetical order.
# Input: An array
# Output: A sorted array

def my_array_sorting_method(source)
	return source.uniq.map{|element| element.to_s}.sort
end

def my_hash_sorting_method(source)
	return source.sort_by {|key, value| [value, key]}.to_a
end

# Identify and describe the ruby method you implemented. 
# For the array sorting method I used the uniq method to remove all duplicate elements
# of the source. Then I created a new array with all the remaining elements converted to 
# strings using the map method. Then .sort to sort them.
# For the hash sorting method I used .sort_by which enumerates the key value pairs in the 
# hash and then sorts them first by value and then by key. Then I converted it to an 
# array using .to_a

# Person 4
# This method deletes an element from an array if it includes a part of a string
# Input: An array and a string
# Output: The array with all elements that contain the string deleted.
def my_array_deletion_method(source, thing_to_delete)
	source.delete_if {|element| element.to_s.include?(thing_to_delete)}
end

# This method deletes a key value pair if the key contains a part of a string.
# Input: A hash and a string
# Output: The hash with all key pairs that contain the string deleted.
def my_hash_deletion_method(source, thing_to_delete)
	source.delete_if {|key, value| key.to_s.include?(thing_to_delete)}
end

# Identify and describe the ruby method you implemented. 
# .delete_if iterates over the values in the array or hash and deletes the value
# if the statement in the block is true.
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!

# What parts of your strategy worked? What problems did you face?
# I approached this exercise by thinking about exactly what I wanted to do with the array or hash.
# I would think about the steps that I needed to take and then try to find methods in the Ruby documentation
# that would do what I was trying to do. Sometimes I would search for a certain method if I knew it from another
# language but didn't know the Ruby syntax for it. I felt that the Ruby docs were often poorly written,
# sometimes a method would be described and another method would be used in the example. And it was not
# always noted that two methods did the same thing, like collect and map for arrays.
# What questions did you have while coding? What resources did you find to help you answer them?
# I often needed to find a lot of methods that were not familiar to me. I used google to search through
# the Ruby docs for them.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I had a little trouble with the select method. It took me some time to realize that it just returned
# the element if the block statement was true. I realized that what I really needed was an iterator 
# that would return the value of the block for each element in the array or hash. Thinking about it
# conceptually like this helped a lot in finding the right Ruby method.
# Did you learn any new skills or tricks?
# I learned a lot of new Ruby methods from this exercise. I am glad that I went ahead and did the whole
# exercise myself.
# How confident are you with each of the Learning Competencies?
# After spending a fair amount of time reading through the docs I feel very confident with the methods
# for Array and Hash and using iterators in Ruby. I also benefited from explaining it in depth.
# Which parts of the challenge did you enjoy?
# I enjoyed finding the method that I was looking for and seeing it so cleanly presented on one line.
# I was glad that I was able to write every method as one line.
# Which parts of the challenge did you find tedious?
# I felt reading the docs was a bit tedious. They aren't really well written.
# What did you learn about researching and explaining your research to others?
# Unfortunately I did this exercise a bit out of sync with my accountability group, so I was unable
# to discuss this with them.