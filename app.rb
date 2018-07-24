require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    status 200
    erb :user_input

  end

  post '/piglatinize' do
    @piglatinized_text = PigLatinizer.new(params[:words])

    erb :piglatinize
  end
end
