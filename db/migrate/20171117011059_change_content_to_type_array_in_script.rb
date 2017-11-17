class ChangeContentToTypeArrayInScript < ActiveRecord::Migration[5.1]
  # def change
  #   #change_column :table_name, :column_name, :new_type
  #   change_column :scripts, :content, :array
  #   change_column :scripts, :content, "array USING content::array"
  # end

  # def up
  #     change_column :scripts, :content, :text, array: true, default: [], using: "(string_to_array(content, ','))"
  # end
  #
  # def down
  #     change_column :scripts, :content, :text, array: false, default: nil, using: "(array_to_string(content, ','))"
  # end
end
