require 'spec_helper'

describe BoardsController do

	context 'User Dashboard' do
		let(:user) { FactoryGirl.create :user }
		before { sign_in user }
	
		describe 'GET index' do 
			it 'returns http success' do
	  		get :index
		  end
	  end
  end

end
