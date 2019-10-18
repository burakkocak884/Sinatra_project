

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
          if owner && owner.authenticate(params["password"])
              session[:owner_id] = owner.id
              redirect '/properties'
            else 
              redirect "/login/retry"
            end
      end

		get "/login/retry" do 
        if logged_in?
          redirect '/properties'
        else
        erb :'/sessions/login_retry.html'
        end

		end


       post "/logout" do
         session.clear
        redirect "login"
        end
      end