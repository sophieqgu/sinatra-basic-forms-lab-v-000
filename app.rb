require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :index 
  end 
  
  get '/create_puppy'
    erb :create_puppy 
  end 
  
  post '/puppy'
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy 
  end 
    
end
