class ChangeContentToTypeHstoreInScript < ActiveRecord::Migration[5.1]
  def change
    #add_column :scripts, :content, :hstore, default: {}, null: false
    #change_column :scripts, :content, :hstore
    #change_column :scripts, :content, "hstore USING content::hstore"
    #change_column :scripts, :content, 'hstore USING CAST(content AS hstore)'
  end
end
