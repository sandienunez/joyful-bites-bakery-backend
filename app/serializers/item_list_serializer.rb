class ItemListSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :item_price, :item_quantity, :total
  has_many :items 

end
