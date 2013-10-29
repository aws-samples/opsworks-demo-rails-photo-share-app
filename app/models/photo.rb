class Photo < ActiveRecord::Base
  attr_accessible :description, :name, :picture
  has_attached_file :picture, storage: :database
  validates_presence_of :picture
  validates_presence_of :name

  def vote_up
    self.votes += 1
  end
  def vote_down
    self.votes -= 1 unless self.votes <= 0
  end

end
