class AddMessageToTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :message, :text
  end
end
