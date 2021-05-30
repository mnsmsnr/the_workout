class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.string :menu
      t.text :content
      t.string :purpose , array: true
      t.string :environment , array: true
      t.string :target , array: true
      t.string :video_id
      t.timestamps
    end
  end
end
