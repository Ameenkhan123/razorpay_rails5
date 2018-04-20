class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :price
      t.string :title
      t.string :description
      t.integer :seller_id

      t.timestamps
    end
  end
end
