class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :lastnameorbizname
      t.string :firstname

      t.timestamps
    end
  end
end
