class RolifyCreateAdminifyRoles < ActiveRecord::Migration
  def change
    create_table(:adminify_roles) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:adminify_users_roles, :id => false) do |t|
      t.references :user
      t.references :role
    end

    add_index(:adminify_roles, :name)
    add_index(:adminify_roles, [ :name, :resource_type, :resource_id ])
    add_index(:adminify_users_roles, [ :user_id, :role_id ])
  end
end
