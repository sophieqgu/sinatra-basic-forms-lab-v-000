require_relative 'config/environment'
require_relative 'models/puppy'

class App < Sinatra::Base
  get '/' do 
    erb :index 
  end 
  
  get '/new'
    erb :create_puppy 
  end 
  
  post '/puppy'
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    @puppy = Puppy.new(@name, @breed, @age)
    erb :display_puppy 
  end 
end
