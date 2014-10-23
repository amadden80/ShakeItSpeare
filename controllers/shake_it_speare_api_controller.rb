# Global: SHAKESPEARE

class ShakeItSpeareAPIController < Sinatra::Base

  get '/sentence' do
    content_type :json
    {sentence: SHAKESPEARE.write_sentence }.to_json
  end

  get '/poem' do
    content_type :json
    {poem: SHAKESPEARE.write_poem }.to_json
  end

end
