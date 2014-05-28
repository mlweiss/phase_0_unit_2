# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# EXPLANATION OF require_relative
# This loads a file that is not in Ruby's library path.
#
require_relative 'state_data'

class VirusPredictor

  # Intializes VirusPredictor class with instance variables
  # set to arguments that correspond to the various
  # properties of the state within which it will originate and the virus's
  # spread. 
  def initialize(state, data = STATE_DATA)
    @state = state
    @population = data[state][:population]
    @population_density = data[state][:population_density]
    @region = data[state][:region]
    @next_region = data[state][:regional_spread]
  end

  # Calculuates the predicted number of deaths and speed of the spread
  # of the virus based on the instance variables that were set based on 
  # the state. This will have a different result for every state.
  def virus_effects  
    predicted_deaths
    speed_of_spread
  end

  private  # This means that the methods below cannot be called as an exlpicit receiver
  # however they can be used the way they are in the methods above.

  # Checks the population density and calculates the 
  # number of deaths based on a formula related to it.
  def predicted_deaths
    coeff = (@population_density / 50).floor
    number_of_deaths = (@population * coeff * 0.1).floor 
    number_of_deaths = (@population * 0.4).floor if @population_density >= 200
    number_of_deaths = (@population * 0.05).floor if @population_density < 50


    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else 
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Calculates the speed of the spread of the virus based on population 
  # density. The relationship of the speed to the population density
  # is approximated by a linear relationship. 


  def speed_of_spread
    speed = 0.5
    speed = 2.5 - ((@population_density.to_i / 50).floor * 0.5) \
     if @population_density < 200


    puts " and will spread across the state in #{speed} months.\n\n"

  end

end


# Creates a report for all 50 states.
=begin
Steps: ITERATE over states in hash STATE_DATA
       INITIATE VirusPredictor object for each state
       CALL virus_effects method for each state
=end

def virus_report(data = STATE_DATA)
  report_hash = Hash.new
  data.each_key {|state| report_hash[state] = VirusPredictor.new(state).virus_effects}
  return report_hash
end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

virus_report

# REFLECTION
=begin
 This exercise took a little longer than I expected as I found that making the code more
 DRY often meant making it less obvious what it was doing. While it was repetitive, I 
 am not sure that I found a better solution in terms of readability. For this purpose
 it is not very important that the code be fast, so we weren't looking for savings
 on running time. That being said I did think of some ways to make the code look cleaner.
  

=end