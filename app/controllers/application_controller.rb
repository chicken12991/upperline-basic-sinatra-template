require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  post '/dankmemes' do
    @caption_input = params["caption"]
    @answer = params["topic"]
    @pixs = pichoose(@answer)
    erb :results
  end
end

