require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      @ships = []
      params[:prate][:ship].each do |ship|
        @ships << Ship.new(ship[:name], ship[:type], ship[:booty])
      end
      erb :show
    end

  end
end
