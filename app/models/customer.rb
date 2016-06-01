class Customer < ActiveRecord::Base
	validates :name, :surname, presence: true
	validates :age, numericality: true, allow_blank: true
	has_many :alerts
end
