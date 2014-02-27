class Client < ActiveRecord::Base
  
  attr_accessible :firstname, :lastnameorbizname
  
  has_many :billing_entries
  
end
