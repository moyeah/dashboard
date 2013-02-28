class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :description
      t.integer :project_id

      t.timestamps
    end
    add_index :units, :project_id
  end
end
