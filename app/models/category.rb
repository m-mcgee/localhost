class Category < ApplicationRecord
	has_many :tags
	has_many :user_categories
	has_many :hosts, through: :user_categories

	# paperclip
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: [/\Aimage\/.*\z/, File]
	
	validates :title, :description, presence: true
	validates :title, :description, uniqueness: true
end
