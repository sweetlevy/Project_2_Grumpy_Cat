require 'rails_helper'

describe Board do

  it { should have_many(:stickies).through(:categories) }
  it { should have_many(:collaborations) }
  it { should belong_to(:creator) }
  it { should belong_to(:editor) }
  it { should have_many(:users).through(:collaborations) }
  it { should have_many(:categories) }

  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_uniqueness_of :title }

end
