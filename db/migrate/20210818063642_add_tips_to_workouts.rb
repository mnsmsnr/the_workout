class AddTipsToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :tips, :text
  end
end
