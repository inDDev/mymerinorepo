class Product < ApplicationRecord
	has_many :design_pages
	has_many :technical_pages
	has_many :overview_pages
	has_many :manufacturing_sub_pages, through: :technical_pages
	has_many :installation_sub_pages, through: :technical_pages
	has_many :performance_sub_pages, through: :technical_pages
	accepts_nested_attributes_for :design_pages
	accepts_nested_attributes_for :technical_pages
	accepts_nested_attributes_for :overview_pages
	accepts_nested_attributes_for :manufacturing_sub_pages
	accepts_nested_attributes_for :installation_sub_pages
	accepts_nested_attributes_for :performance_sub_pages
end
