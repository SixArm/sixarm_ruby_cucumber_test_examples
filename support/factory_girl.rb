# Cucumber support for Factory Girl by ThoughtBot
require "factory_girl"

# Require Factory Girl's included step definitions;
# these enable creating many factories easily.
require "factory_girl/step_definitions"

# Require our factories, which we put in the /factories directory
Dir.glob(File.join(Rails.root, 'factories', '*.rb')).each {|f| require f }

