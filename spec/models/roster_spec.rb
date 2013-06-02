require 'spec_helper'

describe Roster do
  subject { FactoryGirl.create :roster }
  it { should be_valid }
end
