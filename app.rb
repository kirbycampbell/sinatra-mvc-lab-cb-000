require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatinized_text = PigLatinizer.new(params[:words])
    "#{@piglatinized_text.convert_to_piglatin}"

    erb :piglatinize
  end
end
