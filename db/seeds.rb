# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

item = Item.create(product_name: 'Almond Coconut') 
item_two = Item.create(product_name: 'Chocolate Chip' ) 
item_three = Item.create(product_name: 'Blueberry Lemon' ) 

list_item = ListItem.create(quantity: '3')
list = List.create(client_name: 'Sand', date_order_made: '1/14/21')

# binding.pry 