require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'controllers/shake_it_speare_api_controller'
require_relative 'controllers/shake_it_speare_controller'


# Global:  SHAKESPEARE
require_relative 'lib/shake_it_speare'
SHAKESPEARE = ShakeItSpeare.new

map('/api/v0.1') { run ShakeItSpeareAPIController.new }
map('/') { run ShakeItSpeareController.new }
