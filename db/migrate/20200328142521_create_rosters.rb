class CreateRosters < ActiveRecord::Migration[5.1]
  def change
    create_table :rosters do |t|
      t.integer :lead
      t.integer :assistant
      t.integer :team_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
