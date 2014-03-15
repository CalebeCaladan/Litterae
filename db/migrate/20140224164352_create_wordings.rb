class CreateWordings < ActiveRecord::Migration
  def change
    create_table :wordings do |t|
      t.string :title
      t.text :text
      t.integer :category_id

      t.timestamps
    end
  end
end
