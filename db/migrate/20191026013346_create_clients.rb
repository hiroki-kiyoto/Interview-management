class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.text :name
      t.integer :period
      t.text :url
      t.text :locate
      t.text :progresstable
      t.integer :mentor_id
      t.timestamps
    end
  end
end
