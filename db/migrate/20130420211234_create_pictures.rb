class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.integer    :photo_id
      t.string     :style
      t.binary     :file_contents
    end
  end

  def self.down
    drop_table :pictures
  end
end
