class BillingEntry < ActiveRecord::Base
  
  belongs_to :client
  has_many :trust_transactions
  has_many :ar_transactions
  
end
