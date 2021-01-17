class ListSerializer < ActiveModel::Serializer
    attributes :id, :client_name, :date_order_made
    has_many :list_items
    has_many :items, through: :list_items 
  
end
  