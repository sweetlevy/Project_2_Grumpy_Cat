require 'rails_helper'

describe User do

  it { is_expected.to validate_presence_of :username }
  it { is_expected.to validate_uniqueness_of :username }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_uniqueness_of :email }
  it { is_expected.to validate_presence_of :password_digest }
  it { should have_secure_password }

  it { should have_many(:boards).through(:collaborations) }
  it { should have_many(:stickies) }

end
