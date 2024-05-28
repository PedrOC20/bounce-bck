class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :store
      t.integer :number_of_bags, null: false, default: 1
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end
