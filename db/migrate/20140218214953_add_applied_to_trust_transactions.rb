class AddAppliedToTrustTransactions < ActiveRecord::Migration
  def change
    add_column :trust_transactions, :applied, :boolean
  end
end
