require 'zip'
require 'fileutils'
require 'pathname'

class Item < ActiveRecord::Base
  has_attached_file :item_obj
  after_save :unzip

  do_not_validate_attachment_file_type :item_obj

  def mtl_file
    base_path = Pathname.new(self.item_obj.url).split.first.to_s
    base_path + "/" + "model_mesh.obj.mtl"
  end

  def obj_file
    base_path = Pathname.new(self.item_obj.url).split.first.to_s
    base_path + "/" + "model_mesh.obj"
  end

  def texture_file
    base_path = Pathname.new(self.item_obj.url).split.first.to_s
    base_path + "/" + "model_texture.jpg"
  end

  def unzip
    Zip::File.open(self.item_obj.path) do |zipfile|
      base_path = Pathname.new(self.item_obj.path).split.first.to_s
      zipfile.each do |file|
        file.extract(base_path + '/' + file.name){true}
      end
    end
  end
end
