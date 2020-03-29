class CreateRosteredResources < ActiveRecord::Migration[5.1]
  def change
    create_table :rostered_resources do |t|
      t.integer :user_id
      t.integer :roster_id

      t.timestamps
    end
  end
end
