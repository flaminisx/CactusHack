class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :avatar
      t.boolean :free
      t.string :password_digest
      t.string :salt
      t.timestamps null: false
    end
  end
end
