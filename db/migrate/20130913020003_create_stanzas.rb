class CreateStanzas < ActiveRecord::Migration
  def change
    create_table :stanzas do |t|
      t.references :poem
      t.integer :rank
    end
  end
end
