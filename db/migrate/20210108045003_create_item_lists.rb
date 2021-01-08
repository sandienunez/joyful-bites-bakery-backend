class CreateItemLists < ActiveRecord::Migration[6.0]
  def change
    create_table :item_lists do |t|
      t.string :item_name
      t.string :item_price
      t.integer :item_quantity
      t.integer :total

      t.timestamps
    end
  end
end
