class Product < ApplicationRecord
	has_many :design_pages
	has_many :technical_pages
	has_many :overview_pages
	has_many :manufacturing_sub_pages, through: :technical_pages
	has_many :installation_sub_pages, through: :technical_pages
	has_many :performance_sub_pages, through: :technical_pages
end
