require 'bundler'
Bundler.require

require './models/user'
require './controllers/shake_it_speare_api_controller'
require './controllers/shake_it_speare_controller'


# Global:  SHAKESPEARE
require './lib/shake_it_speare'
SHAKESPEARE = ShakeItSpeare.new

map('/api') { run ShakeItSpeareAPIController.new }
map('/') { run ShakeItSpeareController.new }
