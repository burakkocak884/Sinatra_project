class PropertyController < ApplicationController
   



 #list of properties if the user is logged in. 
   get '/properties'  do 
   	   
       if logged_in?
   		 @properties = Property.where(owner_id: session[:owner_id])
   		 @owner = current_user
   		 erb :'/properties/show.html'
       else
   		 redirect "/login"
   	   end
   end


    get '/properties/new' do
       if logged_in?
       @owner = current_user
       # @properties = Property.all
        erb :'/properties/create_properties.html'
       else
       redirect "/login"
       end
    end



   get '/properties/:id' do 
    
      if logged_in?
      @owner = current_user
      @property = Property.find_by_id(params[:id])
    
      erb :'/properties/show_property_details.html'
      else
      redirect "/login"
      end
  end


    post '/properties' do
     
     @property = Property.new(params)
     session[:user_id] = @property.owner_id
     if  @property
     session[:user_id] = @property.owner_id
     @property.save
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
      
      property = Property.find_by_id(params[:id])
      if property
      property.destroy
      redirect "/properties"
      else
      redirect "/properties"
      end
    end



   get '/properties/:id/edit' do
   
     if logged_in?
     @owner = current_user
     @property = Property.find_by_id(params[:id])
     #binding.pry
     erb :'/properties/edit_properties.html'
     else 
     redirect "/login"
     end
  end


  
  patch '/properties/:property_id' do
   
     @property = Property.find_by_id(params[:property_id])
     @property.name = params["name"]
     @property.location = params["location"]
     @property.capacity = params["capacity"]
     @property.save
     redirect "/properties"
  end
end