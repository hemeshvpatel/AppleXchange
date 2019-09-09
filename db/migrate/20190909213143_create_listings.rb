class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :condition
      t.string :color
      t.string :storage
      t.string :memory

      t.timestamps
    end
  end
end
