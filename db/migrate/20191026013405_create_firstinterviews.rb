class CreateFirstinterviews < ActiveRecord::Migration[5.2]
  def change
    create_table :firstinterviews do |t|
      t.text :skill
      t.text :goal
      t.text :memo
      t.text :nextgoal
      t.datetime :starttime
      t.datetime :endtime     
      t.integer :courseperiod
      t.integer :weeklystudyhours
      t.integer :client_id
      t.timestamps
    end
  end
end
