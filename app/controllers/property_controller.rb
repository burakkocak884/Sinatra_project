class PropertyController < ApplicationController
   




   get '/properties'  do 
   	#binding.pry
   	if logged_in?
   		 @properties = Property.where(owner_id: session[:owner_id])
   		#binding.pry
   		@owner = current_user
   		erb :'/properties/show.html'
   	else
   		redirect "/login"
   	end
   end


   get '/properties/new' do
 #binding.pry
      if logged_in?
        #binding.pry
       @owner = current_user
       @properties = Property.all
        erb :'/properties/create_properties.html'
     else
      redirect "/login"
    end

   end



   get '/properties/:id' do 
  if logged_in?
      @owner = current_user
      @property = Property.find_by_id(params[:id])
    
   erb :'/tenants/show.html'
    else
      redirect "/login"
    end
  end


    post '/properties' do
      

      @property = Property.new(params)
      #binding.pry
      
       session[:user_id] = @property.owner_id

     
     if  @property
       session[:user_id] = @property.owner_id
       @property.save
       #binding.pry
     
      
      
      redirect "/properties"
    else
      redirect "/properties/new"
    end



    end
   get '/remove/:id' do
     if logged_in?
       @owner = current_user
      erb :'/properties/show.html'
    else
      redirect "/login"
    end
  end

  delete '/remove/:id' do
      #binding.pry

     
      property = Property.find_by_id(params[:id])
      #binding.pry
      if property
         property.destroy
      redirect "/properties"
   else
      redirect "/properties"
   end
 
 



   end


end