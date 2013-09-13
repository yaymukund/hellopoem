class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.string :title, null: false
      t.references :user
    end
  end
end
