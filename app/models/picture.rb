class Picture < ActiveRecord::Base

  belongs_to :user

  has_attached_file :photo
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


  def self.search(query)
 	  where("title like ? OR description like ?", "%#{query}%", "%#{query}%") 
  end

end
