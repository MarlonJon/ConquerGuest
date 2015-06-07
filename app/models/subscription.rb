class Subscription < ActiveRecord::Base
	validates :name, :email, presence: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	validates :email, uniqueness: true
	validates :terms, :acceptance => {:accept => true}
end
