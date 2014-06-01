# U2.W6: Create a Car Class from User Stories


# I worked on this challenge by myself.


# 2. Pseudocode

=begin

Methods: 
	initialize(model, color)
	accelerate(acceleration)
	decelerate(deceleration)
	stop
	turn left
	turn right
	previous action
	drive(speed, distance)

Attributes:
	distance travelled
	speed
	model
	color 

	DEFINE car class with input model and color (Strings), pizzas (array of Strings)
		SET model variable to model
		SET color to color
		SET pizza variable to pizzas
	DEFINE check speed method to determine speed
		RETURN speed variable (which should be defined somewhere)
	DEFINE accelerate method with input acceleration 
		ADD acceleration to speed
	DEFINE decelerate method with input deceleration
		SUBTRACT deceleration from speed
	DEFINE drive method with inputs speed and distance to drive
		SET speed variable to speed
		SET direction to direction
		ADD distance to total distance variable

=end
# 3. Initial Solution
class Car

	def initialize(color, model, pizzas = nil)
		@color = color
		@model = model
		@speed = 0
		@distance_traveled = 0
		@pizza = pizzas
	end

	def drive(speed = @speed, distance)
		@speed = speed
		@distance_traveled += distance
		puts "You drove your #{@model} #{distance} miles at #{@speed} mph"
	end

	def accelerate(acceleration)
		@speed += acceleration
		puts "You accelerated your #{@model} #{acceleration} mph to #{@speed} mph"
	end

	def decelerate(deceleration)
		@speed -= deceleration	
		puts "You decelerated your #{@model} #{deceleration} mph to #{@speed} mph"		
	end

	def stop
		puts "You stopped!"
		@speed = 0
	end

	def check_speed
		puts "You are traveling at #{@speed} mph"
	end

	def turn_left
		puts "You turned left!"
	end

	def turn_right
		puts "You turned right!"
	end

	def total_distance
		puts "You have traveled #{@distance_traveled} miles"
	end

	def deliver_pizza

		puts "You delivered a #{@pizza.pop.type} pizza!"
	end

	def check_pizzas
		return "No more pizzas to deliver! Success! Time to head home!" if @pizza == []
		puts "You have the following pizzas to deliver:"
		@pizza.each {|pizza| p pizza.type}
	end

	def remove_pizza
		puts "A #{@pizza.pop.type} pizza has been removed from your #{@model}"
	end
end

class Pizza

	def initialize(type)
		@type = type
	end

	def type
		@type
	end
end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

mustang = Car.new('red', 'mustang')
mustang.drive(25, 0.25)
mustang.stop
mustang.turn_right
mustang.drive(35, 1.5)
mustang.check_speed
mustang.decelerate(20)
mustang.drive(0.25)
mustang.stop
mustang.turn_left
mustang.drive(35, 1.4)
mustang.stop
mustang.total_distance

# PIZZA DELIVERY

mushroom_pizza = Pizza.new('Mushroom')
pepperoni_pizza = Pizza.new('Pepperoni')
hawaiian_pizza = Pizza.new('Ham and Pineapple')
vegeterian_pizza = Pizza.new('Vegetarian')
pizzas = [mushroom_pizza, pepperoni_pizza, hawaiian_pizza, vegeterian_pizza]


delivery_car = Car.new('grey', 'Delorean', pizzas)
delivery_car.drive(25, 1) 
p "You've arrived at work in Papa Johns in Moscow!"
delivery_car.check_pizzas
p "First pizza to be delivered is near Paveletskaya Rail Station 10 miles away!"
p "You have 20 minutes to get there!"
delivery_car.drive(30, 10)
delivery_car.stop
delivery_car.deliver_pizza
p "Second pizza to be delivered is near Gorky Park 5 miles away!"
p "You have 5 minutes to get there!!"
delivery_car.drive(60, 3)
p "A car from the city traffic police is following you!"
delivery_car.decelerate(30)
p "The police car turned left and is no longer behind you!"
delivery_car.accelerate(70)
delivery_car.turn_right
delivery_car.stop
delivery_car.deliver_pizza
p "A group of gopniki are eating sunflower seeds in the stairwell!"
p "They steal two of your pizzas!"
delivery_car.remove_pizza
delivery_car.remove_pizza
p delivery_car.check_pizzas

# 5. Reflection 

=begin
I really enjoyed working through this exercise. I found that the method of writing out
the methods and attributes first then taking a look at the driver code before writing the 
pseudocode really allowed me to write the code very quickly. 

There were a few things that I noticed while working through this. First I saw an error
when trying to write the code "return puts 'string'	if @foo = bar". Ruby actually doesn't 
catch the error and allows me to write an assignment in an if statement. Thus it was 
setting @foo to bar and then returning an error when subsequent methods used @foo and didn't
get what they were expecting. I am not really sure why it wouldn't catch that but I should look
further into this.

I also made the choice to add a type method to the pizza class instead of using the attr_reader
to print the type which I had done in previous exercises. I think that this makes for cleaner code.

=end