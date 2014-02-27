class CreateArTransactions < ActiveRecord::Migration
  def change
    create_table :ar_transactions do |t|
      t.string :date
      t.decimal :transactionAmount
      t.string :transactionType
      t.string :note
      t.integer :billing_entry_id

      t.timestamps
    end
  end
end
