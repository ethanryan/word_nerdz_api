class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.integer :script_id
      t.string :name
      t.integer :gender
      t.integer :archetype

      t.timestamps
    end
  end
end
