class AddAttachmentItemObjToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :item_obj
    end
  end

  def self.down
    remove_attachment :items, :item_obj
  end
end
