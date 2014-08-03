require 'rails_helper'

describe Sticky do

  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :content }
  it { is_expected.to validate_uniqueness_of :title }
  it { is_expected.to validate_uniqueness_of :content }
  it { should have_one(:board) }
  it { should have_and_belong_to_many(:categories) }
end
