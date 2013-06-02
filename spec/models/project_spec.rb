require 'spec_helper'

describe Project do
  subject { FactoryGirl.create :project }
  it { should be_valid }
end
