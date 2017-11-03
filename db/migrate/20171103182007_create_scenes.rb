class CreateScenes < ActiveRecord::Migration[5.1]
  def change
    create_table :scenes do |t|
      t.integer :order
      t.string :text
      t.integer :plot_id

      t.timestamps
    end
  end
end
