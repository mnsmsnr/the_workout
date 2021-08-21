class RenamePurposeColumnToWorkouts < ActiveRecord::Migration[5.2]
  def change
    rename_column :workouts, :purpose, :unit
  end
end
