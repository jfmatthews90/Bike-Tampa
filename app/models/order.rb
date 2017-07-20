class Order < ApplicationRecord
	belongs_to :product
#	belongs_to :user (will uncomment once user table is created)
end
