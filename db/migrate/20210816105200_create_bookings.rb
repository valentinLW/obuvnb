class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :shoe, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :pick_up_date
      t.date :return_date
      t.integer :total_price

      t.timestamps
    end
  end
end
