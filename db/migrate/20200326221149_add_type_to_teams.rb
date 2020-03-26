class AddTypeToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :complexity, :string
    remove_column :teams, :assistant, :integer
  end
end
