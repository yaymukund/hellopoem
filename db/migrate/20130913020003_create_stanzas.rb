class CreateStanzas < ActiveRecord::Migration
  def change
    create_table :stanzas do |t|
      t.references :poem
      t.integer :order
    end
  end
end
