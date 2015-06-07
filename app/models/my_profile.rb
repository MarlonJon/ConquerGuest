class MyProfile < ActiveRecord::Base
	belongs_to :user
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  	validates :secondname, presence: true
  	validates :bio, presence: true, length: { maximum: 500 }

end
