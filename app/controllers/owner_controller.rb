
class OwnerController < ApplicationController
	
get '/signup' do
 erb :'owners/create_user.html'
	end



	post '/signup' do
		flash[:message] = "a message"

		owner = Owner.create(username: params["username"], email: params["email"], password: params["password"])
		owner.save
		session[:owner_id] = owner.id
		#binding.pry
		redirect to "/properties"
	end

	


end