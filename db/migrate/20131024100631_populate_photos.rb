class PopulatePhotos < ActiveRecord::Migration
  def up
  	Photo.create(:name => "OpsWorks", 
                   :description => "OpsWorks logo",
                   :picture => File.open(Rails.root.join("app/assets/images/logo.jpg"), "r"))
  end

  def down
  	if photo = Photo.find_by_name("OpsWorks")
  		photo.delete
  	end
  end
end
