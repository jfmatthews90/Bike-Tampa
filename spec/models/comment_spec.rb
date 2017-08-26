require 'rails_helper'

describe Comment do 
  before do
    @product = Product.create!(name: "race bike", description: "A race bike.", price: 499.99, image_url: "bike.jpg")
    @user = User.create!(email: "test@test.com", password: "asdasdasd")
  end

  it "is valid with a body, user, product and rating" do
    comment = Comment.create(
      body: "Commenttext",
      user_id: @user.id,
      product_id: @product.id,
      rating: 5)
    expect(comment).to be_valid
  end
end