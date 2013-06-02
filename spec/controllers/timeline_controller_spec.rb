require 'spec_helper'

describe TimelineController do

  context 'User Timeline' do 
    let(:user) { FactoryGirl.create :user }
    before { sign_in user }

    describe "GET 'index'" do
      it "returns http success" do
        get 'index'
        response.should be_success
      end
    end
  end

end
