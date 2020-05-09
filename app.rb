require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirates = Pirate.new(params[:pirate])
      params[:pirates][:ships].each do |the_ships|
        Ship.new(the_ships)
      end
      
      @ships = Ship.all

      erb :'pirates/show'
    end
    

  end
end
