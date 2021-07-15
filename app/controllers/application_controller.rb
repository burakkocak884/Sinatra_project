require './config/environment'
require 'pry'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :session_secret, "secret"
    register Sinatra::Flash

  end

  get '/' do
  	if logged_in?
  redirect '/properties'
else
	 erb :index

end
  
  end

   def logged_in?
			!!session[:owner_id]
		end 
    def current_user
			
			@owner = Owner.find_by_id(session[:owner_id]) if logged_in?
		end
end
