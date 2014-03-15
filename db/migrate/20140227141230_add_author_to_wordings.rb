class AddAuthorToWordings < ActiveRecord::Migration
  def change
    add_column :wordings, :author_id, :integer
  end
end
