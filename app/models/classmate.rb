class Classmate < ActiveRecord::Base
	validates :name, :email, :qq, :description, :presence => true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, format: {with: VALID_EMAIL_REGEX} 
	validates :name, :length => { :in => 2..10 }
	validates :description, :length => { :maximum => 500 }
	has_attached_file :avatar, :styles => { :thumb => "300x200>" }, :default_url => "/images/:style/missing.png"
end
