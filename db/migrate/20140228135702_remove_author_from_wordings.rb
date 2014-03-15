class RemoveAuthorFromWordings < ActiveRecord::Migration
  def change
      remove_column :wordings, :author_id
      add_column :wordings, :user_id, :integer
  end
end
