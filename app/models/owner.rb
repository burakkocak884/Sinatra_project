class Owner < ActiveRecord::Base
 has_secure_password
 has_many :properties
 has_many :tenants, through: :propery
end