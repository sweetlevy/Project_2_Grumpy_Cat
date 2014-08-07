 require 'rails_helper'

describe Sticky do

  it { should belong_to(:creator).class_name('User').with_foreign_key('creator_id') }
  it { should belong_to(:editor).class_name('User').with_foreign_key('editor_id') }
  it { should belong_to(:category) }

  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :content }

end
