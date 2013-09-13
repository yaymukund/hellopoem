class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.text :text, null: false
      t.integer :rank
      t.references :stanza
    end
  end
end
