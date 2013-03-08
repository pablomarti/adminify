class AddAdminifyNamesToUsers < ActiveRecord::Migration
  def change
    add_column :adminify_users, :first_name, :string
    add_column :adminify_users, :last_name, :string
  end
end
