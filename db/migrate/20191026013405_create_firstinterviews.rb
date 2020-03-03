class CreateFirstinterviews < ActiveRecord::Migration[5.2]
  def change
    create_table :firstinterviews do |t|
      t.text :skill
      t.text :goal
      t.text :memo
      t.text :nextgoal
      t.datetime :starttime, null: false
      t.datetime :endtime, null: false  
      t.integer :courseperiod
      t.integer :weeklystudyhours
      t.references :client,  foreign_key: true
      t.timestamps
    end
  end
end
