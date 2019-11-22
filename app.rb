require 'sinatra'

require './lib/game'

class RockPaperScissors < Sinatra::Base

    get '/' do
      erb :index
    end

    post '/play' do
      @game = Game.new_game(params[:player_name])
      erb :play
    end

    run! if app_file == $0

end
