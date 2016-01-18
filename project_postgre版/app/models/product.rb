class Product < ActiveRecord::Base
	belongs_to :shop
	
	has_many :orders
	has_many :comments

	validates :name, presence: true

	def average_rating
		comments.average(:rating).to_f
	end
	
end
