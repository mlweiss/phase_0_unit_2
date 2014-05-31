# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

	attr_reader :contents, :open

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open_drawer
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #pop is removing the first item in the list starting from the right
		@contents.delete(item)
	end

	def dump  # what should this method return? your drawer is empty
		puts "Your drawer is empty."
		@contents = []
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end

class Silverware
	attr_reader :type, :clean

	# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		@clean = true		
		puts "cleaned the #{type}"
	end
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item # removes fork
silverware_drawer.view_contents # => "knife, spoon"
sharp_knife = Silverware.new("sharp_knife") 


silverware_drawer.add_item(sharp_knife) 

silverware_drawer.view_contents # => "knife, spoon, sharp knife"

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents # Your drawer is empty


fork = Silverware.new('fork') 
fork.eat

#BONUS SECTION
puts fork.clean_silverware

# DRIVER TESTS GO BELOW THIS LINE

def assert 
	raise "Assertion Error" unless yield
end

silverware_drawer = Drawer.new
fork = Silverware.new('fork')
silverware_drawer.add_item(fork)
assert {silverware_drawer.dump == []}


fork.eat
fork.clean_silverware
assert {fork.clean == true}


silverware_drawer.open_drawer
silverware_drawer.close

assert {silverware_drawer.open == false}
# 5. Reflection 
=begin
This was a nice example of what I should have written for my week 5 blog.
It is a simple implementation of classes in Ruby. I found that I had 
some trouble writing the assertions at first, since I often wanted to access
attributes that I hadn't yet made accessible. I ended up changing their access
for the purpose of the driver tests. I also found that sometimes these attributes
are not returned in a form that you can really use them. For instance
printing out Drawer.contents will give you an object instance rather than a list of
the contents. 
	
=end