class TrustTransaction < ActiveRecord::Base
  
  belongs_to :billing_entry
  
end
