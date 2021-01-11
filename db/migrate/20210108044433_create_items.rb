class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :product_name
      t.string :price
      t.string :photo_url

      t.timestamps
    end
  end
end
