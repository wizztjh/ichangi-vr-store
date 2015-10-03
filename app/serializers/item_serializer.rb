class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :table_name, :item_obj, :item_mtl, :item_texture

  def item_obj
    object.item_obj.url
  end

  def item_mtl
    object.item_mtl.url
  end

  def item_texture
    object.item_texture.url
  end
end
