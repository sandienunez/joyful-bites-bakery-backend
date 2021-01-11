class ItemSerializer < ActiveModel::Serializer
  attributes :id, :product_name, :price, :photo_url 
  has_many :list_items
  has_many :lists, through: :list_items 

end
