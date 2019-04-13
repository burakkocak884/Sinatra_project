

class SessionController < ApplicationController


get '/login' do 
if logged_in?
  redirect '/properties'
else
erb :'sessions/login.html'
end

end

post '/login' do

owner = Owner.find_by(email: params["email"])
#binding.pry
if owner && owner.authenticate(params["password"])

	#binding.pry
      session[:owner_id] = owner.id
      #binding.pry
    redirect '/properties'
    
    # erb :'/owners/account.html'
  else 
    redirect "/login"
  end
end

post "/logout" do
#binding.pry
session.clear
#binding.pry
redirect "login"
end
end