class AddAppliedToArTransactions < ActiveRecord::Migration
  def change
    add_column :ar_transactions, :applied, :boolean
  end
end
