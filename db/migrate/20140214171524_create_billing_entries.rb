class CreateBillingEntries < ActiveRecord::Migration
  def change
    create_table :billing_entries do |t|
      t.decimal :timeBilled
      t.decimal :expensesBilled
      t.integer :client_id

      t.timestamps
    end
  end
end
