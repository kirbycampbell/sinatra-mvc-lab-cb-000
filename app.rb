require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do

    erb :user_input

  end

  post '/piglatinize' do
    pig_latin = PigLatinizer.new
    @piglatinized_text = pig_latin.convert_to_piglatin(params[:words])

    erb :results
  end
end
