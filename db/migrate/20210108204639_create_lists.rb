class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :client_name
      t.string :date_order_made
      t.integer :total_amount

      t.timestamps
    end
  end
end
