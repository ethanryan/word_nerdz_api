class ChangeContentBackToTypeTextInScript < ActiveRecord::Migration[5.1]
  def change
    change_column :scripts, :content, :text
  end
end
