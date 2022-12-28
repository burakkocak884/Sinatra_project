class TenantController < ApplicationController


     get '/tenants/new'  do 
           if logged_in?
            @owner = current_user
            erb :'/tenants/create_tenants.html'
            else
            redirect "/login"
            end
    end



    post '/tenants/:property_id' do 
            existing_tenant = Tenant.find_by(params)
            @property_id = params[:property_id]
            if existing_tenant
              erb :'/tenants/tenant_error.html'
            else
            @tenant = Tenant.new(params)
            @tenant.save
            redirect "/properties/#{params[:property_id]}"
          end
      end
  

    post '/tenants' do
            @tenant = Tenant.new(params)
            session[:user_id] = @tenant.owner_id
            if  @tenant
            session[:user_id] = @tenant.property_id
            binding.pry
            @tenant.save
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

  

  delete '/remove/:id/tenants' do
      
            tenant = Tenant.find_by_id(params[:id])
            pro_id = tenant.property_id
            if tenant
            tenant.destroy
            redirect "/properties/#{pro_id}"
            else
            redirect "/properties/#{pro_id}"
            end
      end


      get '/tenants/:id/edit' do
             if logged_in?
              @owner = current_user
              @tenant = Tenant.find_by_id(params[:id])
              @property = Property.find_by_id(params[:property_id])
              erb :'/tenants/edit_tenants.html'
              else 
              redirect "/login"
              end
  end


  
        patch '/tenants/:tenant_id' do
                @tenant = Tenant.find_by_id(params[:tenant_id])
                @tenant.name = params["name"]
                @tenant.occupation = params["occupation"]
                @tenant.unitNumber = params["unitNumber"]
                @tenant.save
              redirect "/properties/#{@tenant.property_id}"
        end

     end

 
 


 
 


