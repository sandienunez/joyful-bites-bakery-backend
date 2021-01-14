class ListItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :item_id, :list_id
  belongs_to :list
  belongs_to :item 

end
