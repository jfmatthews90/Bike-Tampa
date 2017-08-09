class Product < ApplicationRecord
	has_many :orders

	def self.search(search_term)
    if Rails.env.development?
        Product.where("name LIKE ?", "%#{search_term}%")
    else #Rails.env.production?
        Product.where("name ilike ?", "%#{search_term}%")
      #  end
      #if search
      #  find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
      #  find(:all, :conditions => ['name ilike ?', "%#{search}%"])
      #else
      #  find(:all)
    end
  end
end

