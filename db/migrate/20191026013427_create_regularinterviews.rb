class CreateRegularinterviews < ActiveRecord::Migration[5.2]
  def change
    create_table :regularinterviews do |t|
      t.text :nextgoal
      t.text :memo 
      t.text :status
      t.datetime :starttime
      t.datetime :endtime     
      t.integer :weeklystudyhours
      t.integer :client_id
      t.timestamps
    end
  end
end
