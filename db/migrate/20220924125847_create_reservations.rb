class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :city
      t.date :date
      t.references :users, null: false, foreign_key: true
      t.references :airlines, null: false, foreign_key: true

      t.timestamps
    end
  end
end
