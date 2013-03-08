class CreateAdminifyAuthentications < ActiveRecord::Migration
  def change
    create_table :adminify_authentications do |t|
      t.references :user
      t.string :provider
      t.string :uid
      t.string :token

      t.timestamps
    end
    add_index :adminify_authentications, :user_id
  end
end
