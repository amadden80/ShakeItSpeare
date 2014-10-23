# Global: SHAKESPEARE

class ShakeItSpeareController < Sinatra::Base

  get '/' do
    erb :'documentation/index'
  end

end
