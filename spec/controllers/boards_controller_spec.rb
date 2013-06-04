require 'spec_helper'

describe BoardsController do

	context 'User Dashboard' do
		let(:user) { FactoryGirl.create :user }
		before do 
			request.host = "#{user.company.subdomain}.lvh.me"
			sign_in user
		end
	
		describe 'GET index' do 
			it 'returns http success' do
	  		get :index
		  end
	  end
  end

end
