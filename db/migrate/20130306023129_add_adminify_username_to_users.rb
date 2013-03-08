class AddAdminifyUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :adminify_users, :username, :string
  end
end
