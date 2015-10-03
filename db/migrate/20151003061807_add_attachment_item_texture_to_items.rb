class AddAttachmentItemTextureToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :item_texture
    end
  end

  def self.down
    remove_attachment :items, :item_texture
  end
end
