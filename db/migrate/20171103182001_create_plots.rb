class CreatePlots < ActiveRecord::Migration[5.1]
  def change
    create_table :plots do |t|
      t.string :title
      t.string :author
      t.integer :genre_id

      t.timestamps
    end
  end
end
