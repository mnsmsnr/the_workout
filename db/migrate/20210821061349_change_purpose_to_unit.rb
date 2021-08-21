class ChangePurposeToUnit < ActiveRecord::Migration[5.2]
  def change
    rename_table :purposes, :units
  end
end
