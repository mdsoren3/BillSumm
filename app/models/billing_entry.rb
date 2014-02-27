class BillingEntry < ActiveRecord::Base
  
  attr_accessible :timeBilled, :expensesBilled
  
  belongs_to :client
  
  has_many :trust_transactions
  has_many :ar_transactions
  
end
