class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :login, null: false
      t.text :password_digest
    end
  end
end
