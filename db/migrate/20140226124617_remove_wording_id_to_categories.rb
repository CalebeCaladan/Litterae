class RemoveWordingIdToCategories < ActiveRecord::Migration
  def change
        remove_column :categories, :wording_id
  end
end
