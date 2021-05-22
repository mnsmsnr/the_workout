class CreateTarget < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.string :name
    end
  end
end
