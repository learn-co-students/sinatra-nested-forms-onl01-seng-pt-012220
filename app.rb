require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirates = Pirate.new(params[:pirate])
      params[:pirates][:ships].each do |values|
        Ship.new(values)
      end
      
      @ships = Ship.all

      erb :show
    end
    

  end
end
