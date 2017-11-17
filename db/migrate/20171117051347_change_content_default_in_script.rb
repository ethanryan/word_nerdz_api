class ChangeContentDefaultInScript < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:scripts, :content, nil)
  end
end
