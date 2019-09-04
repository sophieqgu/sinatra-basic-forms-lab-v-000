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
    @breed = 
    @age = 
    @puppy = Puppy.new(, params[:breed], params[:age])
    erb :display_puppy 
  end 
    
end
