require 'spec_helper'

describe Company do
  subject { FactoryGirl.create :company }
  it { should be_valid }
end
