class Product < ApplicationRecord
	 belongs_to :seller, optional: true
end
