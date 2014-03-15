class AddIntroToWordings < ActiveRecord::Migration
    def up
      add_column :wordings, :intro, :string
    end

    def down
      remove_column :wordings, :intro
    end
end
