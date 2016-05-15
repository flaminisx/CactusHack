class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :logo
      t.string :portfolio_reference
      t.integer :team_id
      t.text :plan
      t.srting :money
      t.timestamps null: false
    end
  end
end
