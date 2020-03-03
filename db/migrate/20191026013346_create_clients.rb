class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.integer :period, null: false
      t.text :url
      t.string :locate, null: false
      t.text :progresstable
      t.references :mentor,  foreign_key: true
      t.timestamps
    end
  end
end
