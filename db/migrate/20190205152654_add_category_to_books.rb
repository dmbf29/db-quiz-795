class AddCategoryToBooks < ActiveRecord::Migration[5.1]
  def change
    # add_column :table_name, :column_name, :data_type
    add_column :books, :category, :string
    # remove_column :books, :category, :string
    # add_reference :books, :user, foreign_key: true
  end
end
