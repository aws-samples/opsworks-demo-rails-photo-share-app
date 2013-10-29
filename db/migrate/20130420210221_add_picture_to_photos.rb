class AddPictureToPhotos < ActiveRecord::Migration
  def self.up
    add_attachment :photos, :picture
  end

  def self.down
    remove_attachment :photos, :picture
  end
end
