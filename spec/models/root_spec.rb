require 'spec_helper'

describe Root do
  subject { FactoryGirl.create :root }
  it { should be_valid }
end