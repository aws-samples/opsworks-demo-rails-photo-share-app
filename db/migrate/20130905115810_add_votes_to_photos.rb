class AddVotesToPhotos < ActiveRecord::Migration
  def up
  	add_column :photos, :votes, :integer, :default => 0
  end
  def down
  	remove_column :photos, :votes
  end
end
