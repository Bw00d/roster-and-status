class AddComplexityToAlternates < ActiveRecord::Migration[5.1]
  def change
    add_column :alternates, :complexity, :string
    add_column :trainees, :complexity, :string
  end
end
