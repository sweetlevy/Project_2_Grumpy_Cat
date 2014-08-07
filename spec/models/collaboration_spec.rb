require 'rails_helper'

describe Collaboration do

  it { should belong_to(:user) }
  it { should belong_to(:board) }

end
