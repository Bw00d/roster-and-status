class AddNoteToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :note, :text
    add_column :users, :remote_only, :boolean
  end
end
