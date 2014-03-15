class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :wording_id
      t.string :name

      t.timestamps
    end
    add_index :categories, :wording_id
  end
end
