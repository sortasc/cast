require 'spec_helper'

describe User do
	subject { FactoryGirl.create :user }
  it { should be_valid }
end
