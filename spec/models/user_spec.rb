require 'rails_helper'

describe User do

  it { is_expected.to validate_presence_of :username }
  it { is_expected.to validate_uniqueness_of :username }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_uniqueness_of :email }
  it { is_expected.to validate_presence_of :password }
  it { should have_secure_password }

  it { should have_many(:created_stickies) }
  it { should have_many(:created_boards) }
  it { should have_many(:edited_stickies) }
  it { should have_many(:edited_boards) }
  it { should have_many(:collaborations) }
  it { should have_many(:boards).through(:collaborations) }

end
