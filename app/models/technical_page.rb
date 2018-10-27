class TechnicalPage < ApplicationRecord
	belongs_to :product
	has_many :manufacturing_subpages
	has_many :installation_sub_pages
	has_many :performance_sub_pages
	accepts_nested_attributes_for :manufacturing_subpages
	accepts_nested_attributes_for :installation_sub_pages
	accepts_nested_attributes_for :performance_sub_pages
end
