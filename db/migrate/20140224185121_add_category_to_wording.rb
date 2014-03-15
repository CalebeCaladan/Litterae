class AddCategoryToWording < ActiveRecord::Migration
  def up
    add_column :wordings, :category, :string
    remove_column :wordings, :category_id
  end

  def down
    remove_column :wordings, :category
    add_column :wordings, :category_id, :integer
  end
end
