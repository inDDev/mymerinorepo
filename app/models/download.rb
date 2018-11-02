class Download < ApplicationRecord
	belongs_to :category

	def self.search(search)
		#where("category_id LIKE '?'", "%#{search}")
		where("category_id::text LIKE ?", "%#{search}")
		#where(category_id: %search)
	end
end
