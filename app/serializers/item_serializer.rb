class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  belongs_to :item_list

end
