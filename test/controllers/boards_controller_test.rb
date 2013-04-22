require "minitest_helper"

describe BoardsController do
	let(:user) { MiniTest::Mock.new }
	before { stub(:authenticate_user!, true) }

	describe '#index' do 
  	# before { sign_in user }
  	get :index
		# get :index
  	respond_with(:success)
  end

end
