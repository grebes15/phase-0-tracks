# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
#require_relative is relative to this file and gain access to that file.
#require would be used only if you are using an outside library

class VirusPredictor
	#initializing 3 attributes/ instance variables to be used throughout various methods written for this class
	#creating a new instance of this class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calls predicted_deaths methods and speed_of_spread method to provide information regarding the effects of the virus.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #predicts the number of deaths based on population_density.
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    if @population_density < 50
    	number_of_deaths = (@population * 0.05).floor
    elsif @population_density < 100
    	number_of_deaths = (@population * 0.1).floor
    elsif @population_density < 150
    	number_of_deaths = (@population * 0.2).floor
    elsif @population_density < 200
    	number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 200
    	number_of_deaths = (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #calculators the speed of the virus based on population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    # if @population_density >= 200
    #   speed = 0.5
    # elsif @population_density < 200
    #   speed = 1
    # elsif @population_density < 150
    #   speed = 1.5
    # elsif @population_density < 100
    #   speed = 2
    # elsif @population_density < 50 
    #   speed = 2.5
    # end

    if @population_density < 50
    	speed = 2.5
    elsif @population_density < 100
    	speed = 2
    elsif @population_density < 150
    	speed = 1.5
    elsif @population_density < 200
    	speed = 1
    elsif @population_density >= 200
    	speed = 0.5
    end
    	
    	
    		

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

STATE_DATA.each do |state_name, population_info|
	state = VirusPredictor.new(state_name, population_info[:population_density], population_info[:population])
	state.virus_effects
end


#=======================================================================
# Reflection Section
# - There are no differences between the two different hash syntaxes shown in the state_data file.
# Each hash syntax performs the same task.
# - require_relative is accessing a file relative to the directory that one is currently in.
# This is difference from require. Require is used to specify to use an outside library in the Ruby program.
# - Some way to iterate through an hash is to use an each method. 
# The source code shown between lines 105-108 is an example of how to iterate through an hash
# using an each method. One could also use a map method to iterate through a hash.
# - When refactoring virus_effects, I noticed that the parameters and arguments being passed
# were not being changed. It was the attributes or instance variables being passed in the initialize method
# that were being changed so having these parameters being called did not change the program so it doesn't make
# sense to have continue to have these parameters being passed when they are not being used.
# The concept that I most sodlified in this challenge is understanding what is being asked when one
# ask about the scope of a variable, method, or object.
