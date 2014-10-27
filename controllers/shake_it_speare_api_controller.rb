# Global: SHAKESPEARE

class ShakeItSpeareAPIController < Sinatra::Base

  get '/sentence' do
    content_type :json
    markov_degrees =[(params[:markov] || 2).to_i, 10].min
    {
      sentence: SHAKESPEARE.write_sentence(markov_degrees),
      markov: markov_degrees
    }.to_json
  end

  get '/poem' do
    content_type :json
    markov_degrees = [(params[:markov] || 2).to_i, 10].min
    num_lines = [(params[:lines] || 3).to_i, 30].min
    {
      poem: SHAKESPEARE.write_poem(num_lines, markov_degrees),
      markov: markov_degrees,
      lines: num_lines
    }.to_json
  end

  not_found do
    content_type :json
    status 404
    {}.to_json
  end

end
