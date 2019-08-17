class CreateMicroposts < ActiveRecord::Migration[5.1]
  def change
    create_table :microposts do |t|
      t.integer :user_id
      t.integer :training_id
      t.text :comment

      t.timestamps
    end
  end
end
