class TenantController < ApplicationController


#  get '/tenants/' do 

#   if logged_in?
#        current_user
#        @tenants = Tenant.where(owner_id: session[:owner_id])
#         current_user
#       erb :'tenants/show.html'
#     else
#       redirect "/login"
#     end

# end


 





get '/tenants/new'  do 
   	#binding.pry
   	if logged_in?
      @owner = current_user

    #binding.pry
   erb :'/tenants/create_tenants.html'
   	else
   		redirect "/login"
   	end
   end



post '/tenants/:property_id' do 
 #binding.pry
  @tenant = Tenant.new(params)
  #binding.pry
  #session[:user_id] = @owner.id
  @tenant.save
  redirect "/properties/#{params[:property_id]}"

end
  #  get '/tenants/:id' do 
  # if logged_in?
  #     @owner = current_user
  #     @property = Property.find_by_id(params[:id])

  #   #binding.pry
  #  erb :'/tenants/home.html'
  #   else
  #     redirect "/login"
  #   end
  # end

    post '/tenants' do
      #binding.pry

      @tenant = Tenant.new(params)
      #binding.pry
      
       session[:user_id] = @tenant.owner_id

     
     if  @tenant
       session[:user_id] = @tenant.property_id
       @tenant.save
       #binding.pry
     
      
      
      redirect "/tenants"
    else
      redirect "/tenants/new"
    end
  end
   get '/tenants/remove/:id' do
     if logged_in?
       @tenant = current_user
      erb :'tenants/show.html'
    else
      redirect "/login"
    end
  end

  delete '/tenants/remove/:id' do
      #binding.pry

     
      tenant = Tenant.find_by_id(params[:id])
      #binding.pry
      if tenant
         tenant.destroy
      redirect "/tenants"
   else
      redirect "/tenants"
   end
 
 



   end


end





#    	get '/tenants/new' do
#     #binding.pry 

#    		if logged_in?
#        @owner = current_user
#         erb :'/tenants/create_tenants.html'
#      else
#       redirect "/login"
#     end

#    	end
#  get '/tenants/remove/:id' do
#      if logged_in?
#        @owner = current_user
#       erb :'/tenants/home.html'
#     else
#       redirect "/login"
#     end
#   end

#   delete '/tenants/remove/:id' do
#       #binding.pry

     
#       tenant = Tenant.find_by_id(params[:id])
#       #binding.pry
#       if tenant
#         #binding.pry
#          tenant.destroy
#       redirect "/tenants/#{tenant.property_id}"
#    else
#       redirect "/tenants/#{tenant.property_id}"
#    end
 
 


 
 


#   end





# end
