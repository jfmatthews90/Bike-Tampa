class StaticPagesController < ApplicationController

	def landing_page
		@featured_product = Product.third
	end

  def index
  end
end

