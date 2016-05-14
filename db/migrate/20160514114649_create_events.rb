class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :photo
      t.text :description
      t.string :link
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
