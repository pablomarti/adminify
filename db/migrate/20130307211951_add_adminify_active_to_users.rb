class AddAdminifyActiveToUsers < ActiveRecord::Migration
  def change
    add_column :adminify_users, :active, :boolean, :default => true
  end
end
