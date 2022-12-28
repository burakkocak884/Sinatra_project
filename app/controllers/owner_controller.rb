require 'uri'
class OwnerController < ApplicationController
	# to sign up form
	get '/signup' do
	 	erb :'owners/create_owner.html'
	end


#Input from signup form comes in,
#email gets validated. If not valid, user is directed to signup with an error.
#Lastly, email and ownername uniquness get validated. if not valid, directed back to signup with an error.
	post '/signup' do
		existing_owner = Owner.find_by(username: params["username"], email: params["email"])
		if params["email"].match(URI::MailTo::EMAIL_REGEXP).present?
			if !existing_owner
			owner = Owner.create(username: params["username"], email: params["email"], password: params["password"])
		    owner.save
		    session[:owner_id] = owner.id
		    redirect to "/properties"
			else
			redirect "/signup/user/error"
			end 
	
		else
		redirect "signup/email/error"
		end
    end
	 #username and email not uniq signup form
	  get "/signup/user/error" do
	  erb :'owners/create_owner_user_error.html'
	end
   #invalid email signup form
	 get '/signup/email/error' do
	 erb :'owners/create_owner_email_error.html'
	end

	get '/owner/:owner_id/tenants' do 
		if logged_in?
    	 @owner = current_user
     	erb :'/owners/show_owners_all_tenants.html'
 		else 
 		redirect "/login"
	end
end

end