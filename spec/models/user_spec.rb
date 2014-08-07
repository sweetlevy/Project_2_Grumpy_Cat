require 'rails_helper'

describe User do

  it { should have_many(:created_stickies).class_name('Sticky').with_foreign_key('creator_id') }
  it { should have_many(:created_boards).class_name('Board').with_foreign_key('creator_id') }
  it { should have_many(:edited_stickies).class_name('Sticky').with_foreign_key('editor_id') }
  it { should have_many(:edited_boards).class_name('Board').with_foreign_key('editor_id') }
  it { should have_many(:collaborations) }
  it { should have_secure_password }
  it { should have_many(:boards).through(:collaborations) }

  it { is_expected.to validate_presence_of :username }
  it { is_expected.to validate_uniqueness_of :username }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_uniqueness_of :email }
  it { is_expected.to validate_presence_of :password }
  
end
