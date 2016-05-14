class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :logo
      t.string :portfolio_reference
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
