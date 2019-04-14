require 'uri'
class OwnerController < ApplicationController
	
get '/signup' do
 erb :'owners/create_owner.html'
	end



	post '/signup' do
		
#binding.pry
		if params["email"].match(URI::MailTo::EMAIL_REGEXP).present?


		owner = Owner.create(username: params["username"], email: params["email"], password: params["password"])
		owner.save
		session[:owner_id] = owner.id
		#binding.pry
		redirect to "/properties"
	else
		#binding.pry
  redirect "/signup/error"
	
	end
end

 get '/signup/error' do
 erb :'owners/create_owner_after_error.html'
	end


	

	


end