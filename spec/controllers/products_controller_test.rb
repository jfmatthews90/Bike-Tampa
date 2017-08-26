require 'rails_helper'

describe ProductsController, type: :controller do
  context 'GET #index' do
    it 'renders the index page' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end

  context 'GET #show' do
    it 'renders the show page' do
      @product = FactoryGirl.create(:product, image_url: "bike.jpg")
      get :show, params: {id: @product}
      expect(response).to be_ok
      expect(response).to render_template('show')
    end
  end

  context 'POST #create' do
    before do
      @user = FactoryGirl.build(:user)
      sign_in @user
    end
    it 'successfully creates new product' do
      @product = FactoryGirl.create(:product, image_url: "bike.jpg")
      expect(response).to be_successful
    end
    it "cannot create new product" do
      expect(Product.new(price:nil)).not_to be_valid
    end
  end

    context "put #update" do
      before do 
        @product = FactoryGirl.create(:product, image_url: "bike.jpg")
        @user = FactoryGirl.build(:user)
        sign_in @user
      end
      it "successfully updates a product" do
        @update = { name:@product.name, image_url: "bike.jpg", id:@product.id, price:@product.price, colour: "brown"}
        put :update, params: { id: @product.id, product: @update}
        @product.reload
        expect(@product.colour).to eq "red"
      end
  end

    context "delete" do 
      before do 
        @product = FactoryGirl.create(:product, image_url: "bike.jpg")
        @user = FactoryGirl.create(:user)
        sign_in @user
      end
      it "allows admin to delete a product" do 
        delete :destroy, params: {id: @product}
        expect(response).to redirect_to "http://test.host/"
      end
    end 
  end
