class CreatePreorders < ActiveRecord::Migration
  def change
    create_table :preorders do |t|
      t.string :email

      t.timestamps null: false
    end
  end
end
