class RemovePictureFromPhotos < ActiveRecord::Migration
  def up
    remove_column :photos, :picture
  end

  def down
    add_column :photos, :picture, :string
  end
end
