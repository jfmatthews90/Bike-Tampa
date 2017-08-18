require 'rails_helper' # Gets access to the configuration we need to write RSpec tests.

describe Product do
	context "when the product has comments" do

		let(:product) { Product.create!(name: "race bike", description: "a cool race bike.", price: "499.99", image_url: "bike.jpg") }
		let(:user) { User.create!(email: "test9@test.com", password: "asdasdasd") }

		before do
			product.comments.create!(rating: 1, user: user, body: "Awful bike!")
  		product.comments.create!(rating: 3, user: user, body: "Ok bike!")
  		product.comments.create!(rating: 5, user: user, body: "Great bike!")
  	end

  	it "returns the average rating of all comments" do
			expect(product.average_rating).to eq (3)
		end

		it "is not valid" do
			expect(Product.new(description: "moo")).not_to be_valid
		end
	end
end
	