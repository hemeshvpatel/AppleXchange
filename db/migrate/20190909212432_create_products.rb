class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :type_id
      t.string :model

      t.timestamps
    end
  end
end
