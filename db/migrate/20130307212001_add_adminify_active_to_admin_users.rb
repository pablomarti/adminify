class AddAdminifyActiveToAdminUsers < ActiveRecord::Migration
  def change
    add_column :adminify_admin_users, :active, :boolean, :default => true
  end
end
