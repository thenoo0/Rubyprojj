class Vehicle < ActiveRecord::Base
	validates :brand, :model, presence: true
	validates :year,:power, numericality: true, allow_blank: false
	has_many :rentals
end
