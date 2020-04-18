require './environment'


module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    get 'pirates/:id' do
      @pirate = Pirate.find(params[:id])

      erb :'pirate/show'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
    @ships = Ship.all
    erb :'pirate/show'
    end

  end
end
#/new.erb
#pirate needs name
#pirate needs weight
#pirate needs height
#ship needs name
#ship needs type
#ship needs booty(?)
