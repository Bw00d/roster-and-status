class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.integer :lead
      t.integer :assistant
      t.string :name
      t.string :status
      t.string :location
      t.string :incident
      t.date :date_up
      t.date :date_down

      t.timestamps
    end
  end
end
