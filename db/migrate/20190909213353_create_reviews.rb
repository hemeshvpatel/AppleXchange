class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :product_id
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
