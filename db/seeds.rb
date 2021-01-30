# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# @list = List.create({client_name: 'Kay', date_order_made: '1/20/21'})
# @list.save 
@list = List.find_by({client_name: 'Joseph', date_order_made: "1/30/21"})

# @list_item = ListItem.create(quantity: "1", item_id: 1)
@list_item = ListItem.find_by(quantity: "6", item_id: 1, list_id: 125)

# @list = List.create({client_name: 'Jesus', date_order_made: "1/30/21"})
# @list_item = ListItem.find_by(quantity: "3", item_id: 2, list_id: 126)
# @list.list_items.where(quantity: "1", item_id: 1, list_id: 121).first_or_create

# @list_item.save 
# @list.list_items.create(quantity: "1", item_id: 1, list_id: 112)
# @list.list_items.where(quantity: "1", item_id: 1, list_id: 113).first_or_create
# @item = Item.create(product_name: "Chocolate Chip")
# @list.items.create(product_name: "Chocolate Chip")
# @list_item.save 
# @list.items.find_by(product_name: "Chocolate Chip")





