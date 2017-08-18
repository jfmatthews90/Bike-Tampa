require 'rails_helper'

describe UsersController, :type => :controller do
	let(:user) { User.create!( email: 'test@test.com', password: 'asdasdasd') }

	describe 'GET #show' do
		context 'when a user is logged in' do
			before do
				sign_in user
			end 
			it 'loads correct user details'
				get :show, params: { id: user.id }
				expect(response_status).to eq 200
				expect(assigns(:user)).to eq user
			end 
		end

	describe 'GET #show' do
		context 'when a user is logged out' do
			it 'redirects to login' do
				get :show, params: { id: user.id }
				expect(response).to redirect_to(new_user_session_path)
			end 
		end
	end 
end 