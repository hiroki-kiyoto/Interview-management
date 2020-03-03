class CreateRegularinterviews < ActiveRecord::Migration[5.2]
  def change
    create_table :regularinterviews do |t|
      t.text :nextgoal
      t.text :memo 
      t.text :status
      t.datetime :starttime, null: false
      t.datetime :endtime, null: false     
      t.integer :weeklystudyhours
      t.references :client,  foreign_key: true
      t.timestamps
    end
  end
end
