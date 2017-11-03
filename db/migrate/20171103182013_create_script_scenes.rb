class CreateScriptScenes < ActiveRecord::Migration[5.1]
  def change
    create_table :script_scenes do |t|
      t.integer :script_id
      t.integer :scene_id

      t.timestamps
    end
  end
end
