class AddAdminifySessionsTable < ActiveRecord::Migration
  def change
    create_table :adminify_sessions do |t|
      t.string :session_id, :null => false
      t.text :data
      t.timestamps
    end

    add_index :adminify_sessions, :session_id
    add_index :adminify_sessions, :updated_at
  end
end
