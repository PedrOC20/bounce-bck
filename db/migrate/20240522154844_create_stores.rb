class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name,                null: false, default: ""
      t.string :location
      t.text :address
      t.float :price_per_bag,      null: false, default: 5
      t.integer :max_number_of_bags, null: false, default: 0

      t.timestamps
    end
  end
end
