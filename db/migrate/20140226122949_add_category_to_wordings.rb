class AddCategoryToWordings < ActiveRecord::Migration
  def change
    add_column :wordings, :category_id, :integer
    remove_column :wordings, :category
  end
end
