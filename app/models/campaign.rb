class Campaign < ActiveRecord::Base
  validates :name, :link, presence: true


  has_attached_file :image, :styles => {:medium => "200x200>", :thumb => "100x100>"}
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
