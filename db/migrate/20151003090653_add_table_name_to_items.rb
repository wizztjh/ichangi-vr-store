class AddTableNameToItems < ActiveRecord::Migration
  def change
    add_column :items, :table_name, :string
  end
end
