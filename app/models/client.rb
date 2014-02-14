class Client < ActiveRecord::Base
  
  has_many :billing_entries
  
end
