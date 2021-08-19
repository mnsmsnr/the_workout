class RemoveContentFromWorkouts < ActiveRecord::Migration[5.2]
  def change
    remove_column :workouts, :content, :text
  end
end
