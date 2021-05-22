class CreateEnvironment < ActiveRecord::Migration[5.1]
  def change
    create_table :environments do |t|
      t.string :name
    end
  end
end
