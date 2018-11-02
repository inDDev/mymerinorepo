class Category < ApplicationRecord
	has_many :downloads
	validates :name, presence: true
end
