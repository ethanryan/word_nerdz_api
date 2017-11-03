class CreateScripts < ActiveRecord::Migration[5.1]
  def change
    create_table :scripts do |t|
      t.string :title
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
end
