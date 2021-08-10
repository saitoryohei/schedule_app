class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.text :title
      t.datetime :start
      t.datetime :finish
      t.integer :allday
      t.text :content

      t.timestamps
    end
  end
end
