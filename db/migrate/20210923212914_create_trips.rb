class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :destination
      t.string :date
      t.integer :duration
      t.integer :cost
      t.integer :user_id
      t.timestamps
    end
  end
end
