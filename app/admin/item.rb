ActiveAdmin.register Item do
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :name
      f.input :width
      f.input :height
      f.input :length
      f.input :table_name
      f.input :item_obj
    end
    f.actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name , :item_obj , :item_mtl , :item_texture ,:item_obj_file_name ,:item_obj_content_type ,:item_obj_file_size ,:item_obj_updated_at ,:item_mtl_file_name ,:item_mtl_content_type ,:item_mtl_file_size ,:item_mtl_updated_at ,:item_texture_file_name ,:item_texture_content_type ,:item_texture_file_size ,:item_texture_updated_at
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
