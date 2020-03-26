class AddIcToTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :ic, :string
    add_column :teams, :deputy_ic, :string
  end
end
