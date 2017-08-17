require 'rails_helper' # Gets access to the configuration we need to write RSpec tests.

describe Product do
	context "when the product has comments" do

		before do
			@product = Product.create!(name: "race bike")
			@user = User.create!(email: "test9@test.com", password: "Soccer801")
			product.comments.create!(rating: 1, user: user, body: "Awful bike!")
  		product.comments.create!(rating: 3, user: user, body: "Ok bike!")
  		product.comments.create!(rating: 5, user: user, body: "Great bike!")
  	end

  	it "returns the average of all comments" do
			expect(@product.average_rating). to eq 3
		end

		let(:product) { Product.create!(name: "race bike") }

		it "should return race bike" do
			expect(product.name).to eq "race bike"
		end
	end
end
	