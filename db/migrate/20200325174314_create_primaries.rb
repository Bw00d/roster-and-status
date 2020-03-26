class CreatePrimaries < ActiveRecord::Migration[5.1]
  def change
    create_table :primaries do |t|
      t.integer :user_id
      t.string :team_id

      t.timestamps
    end
  end
end
