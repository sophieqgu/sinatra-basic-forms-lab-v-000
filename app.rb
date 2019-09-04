require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :index 
  end 
  
  get '/create_puppy'
    erb :create_puppy 
  end 
  
  post 'display_puppy'
    @puppy = Puppy.new(params[:name], params[:breed], params[:months_old])
    erb :display_puppy 
  end 
    
end
