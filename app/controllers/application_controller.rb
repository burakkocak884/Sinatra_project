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


		
  

 #  get '/signup' do
 # erb :'owners/create_user.html'
	# end



	# post '/signup' do
	# 	flash[:message] = "a message"

	# 	owner = Owner.create(username: params["username"], email: params["email"], password: params["password"])
	# 	owner.save
	# 	#binding.pry
	# 	redirect to "/owners/#{owner.id}"
	# end

	# get '/owners/:id' do 
	# 	#binding.pry

	# 	@owner = Owner.find_by_id(params[:id])
	# 	#binding.pry
	# 	erb :'owners/show.html'
	# end

# 	get '/login' do 
#  erb :'owners/login.html'
# 	end

# 	post '/login' do

# @owner = Owner.find_by(username: params["username"])
# #binding.pry
# if @owner
# 	#binding.pry
#       session[:owner_id] = @owner.id
#       #binding.pry
#     #redirect '/owners/account.html'
    
#     erb :'/owners/account.html'
#   else 
#     erb :'owners/error.html'
#   end
# #binding.pry

# end
end
