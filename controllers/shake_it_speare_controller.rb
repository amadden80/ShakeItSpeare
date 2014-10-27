# Global: SHAKESPEARE

class ShakeItSpeareController < Sinatra::Base

  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)

  get '/' do
    num_lines = 3
    markov_degrees = 5
    poem = SHAKESPEARE.write_poem(num_lines, markov_degrees)
    @poem_lines = poem.split("\n")
    erb :index
  end

  not_found do
    status 404
    erb :not_found
  end

end
