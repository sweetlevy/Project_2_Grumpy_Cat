require 'rails_helper'

describe Category do

  it { should belong_to(:board) }
  it { should have_many(:stickies).dependent(:destroy) }
  it { is_expected.to validate_presence_of :title }

end
