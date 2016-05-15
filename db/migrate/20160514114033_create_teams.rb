class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :speaker_id
      t.boolean :free
      t.integer :places
      t.string :link
      t.timestamps null: false
    end
  end
end
