class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.text :text, null: false
      t.integer :order, null: false
      t.references :stanza
    end
  end
end
