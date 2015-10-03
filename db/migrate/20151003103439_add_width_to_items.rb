class AddWidthToItems < ActiveRecord::Migration
  def change
    add_column :items, :width, :string
    add_column :items, :height, :string
    add_column :items, :length, :string
  end
end
