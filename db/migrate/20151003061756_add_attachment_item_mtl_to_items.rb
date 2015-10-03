class AddAttachmentItemMtlToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :item_mtl
    end
  end

  def self.down
    remove_attachment :items, :item_mtl
  end
end
