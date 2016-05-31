class Vehicle < ActiveRecord::Base
	validates :brand, :model,:description, presence: true
	validates :year,:power, numericality: true, allow_blank: false
end
