class AddOauthTokenToUsersoauthToken < ActiveRecord::Migration
  def change
    add_column :users, :oauth_tokens, :string
    add_column :users, :oauth_expires_at, :datetime
  end
end
