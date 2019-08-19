class CreateTrainings < ActiveRecord::Migration[5.1]
  def change
    create_table :trainings do |t|
      t.integer :user_id
      t.string :menu
      t.text :content
      t.string :purpose , array: true
      t.string :environment , array: true
      t.string :target , array: true
      t.string :picture
      t.string :movie

      t.timestamps
    end
  end
end
