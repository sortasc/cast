require 'spec_helper'

describe TimelineController do

  context 'User Timeline' do 
    let(:user) { FactoryGirl.create :user }
    before do 
      request.host = "#{user.company.subdomain}.lvh.me"
      sign_in user
    end

    describe "GET 'index'" do
      it "returns http success" do
        get 'index'
        response.should be_success
      end
    end
  end

end
