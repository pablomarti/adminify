class AddAdminifyUsernameToAdminUsers < ActiveRecord::Migration
  def change
    add_column :adminify_admin_users, :username, :string
  end
end
