class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :address
      t.string :model
      t.float :size
      t.integer :price
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
