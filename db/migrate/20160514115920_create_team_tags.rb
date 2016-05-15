class CreateTeamTags < ActiveRecord::Migration
  def change
    create_table :team_tags do |t|
      t.integer :team_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
