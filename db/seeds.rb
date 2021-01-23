# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# item = Item.create(product_name: 'Almond Coconut') 
# item_two = Item.create(product_name: 'Chocolate Chip' ) 
# item_three = Item.create(product_name: 'Blueberry Lemon' ) 

# list_item.list = List.create(client_name: 'Sand', date_order_made: '1/14/21')
# list.list_items << ListItem.create(quantity: '3') # has many
# list_item.item = Item.create(product_name: 'Almond Coconut')  #belongs to
# # item.list_items << ListItem.create(quantity: '3')#has many 

  
#tell list item about the list, tell list about the list item
#tell list item about the item and tell item about the list_item 
# list = List.create!(client_name: 'Sand', date_order_made: '1/14/21')

# item = Item.create!(product_name: 'Almond Coconut') 
# list_item = ListItem.create!(quantity: '4')

# list_item.list=list  
# list.list_items << list_item # has many
# list_item.item=item #belongs to
# item.list_items << list_item #has many 

# list.list_items << ListItem.create(quantity: '4') 
# list_item.item=item


# @list = List.create!({
#     client_name: 'Sandie', date_order_made: '1/14/21'})
# @list_item = ListItem.create!(quantity: '4')
# @list_item.list=@list 
# @list.list_items << @list_item 
# @list_item.item=Item.create!(product_name: 'Almond Coconut') 
# @item.list_items.create << @list_item 

list = List.create!({
   client_name: 'Sandie', date_order_made: '1/14/21'})
@list_item.list = List.create!({
    client_name: 'Sandie', date_order_made: '1/14/21'})
@list.list_items <<  ListItem.create!(quantity: '4')
@list_item.item=Item.create!(product_name: 'Almond Coconut') 
list_item = ListItem.create!(quantity: '4')
@list_item = @items
# list_item.item = Item.create(product_name: 'Almond Coconut')
# # list.list_items = ListItem.create(quantity: '4')

# # @item = @list_items

@list = List.create!({
    client_name: 'Sand', date_order_made: '1/14/21'})
@item = Item.create!(product_name: 'Almond Coconut') 
@list_item = ListItem.create!(quantity: '4')
