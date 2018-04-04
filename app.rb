require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do

      
      erb :index
    end

    get '/pirates' do
      @pirates = Pirate.all
      @ships = Ship.all

      erb :show
    end

    get '/pirates/new' do

      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])


      params[:pirate][:ships].each do |ship_hash|
        @ship = Ship.new(ship_hash)

      end

      redirect '/pirates'
    end





  end
end
