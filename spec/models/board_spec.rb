require 'rails_helper'

describe Board do

  it { should have_many(:stickies).through(:categories).dependent(:destroy) }
  it { should have_many(:collaborations) }
  it { should belong_to(:creator).class_name('User').with_foreign_key('creator_id') }
  it { should belong_to(:editor).class_name('User').with_foreign_key('editor_id') }
  it { should have_many(:users).through(:collaborations) }
  it { should have_many(:categories) }

# validates :title on :create
  describe "validate presence and uniqueness of title on create" do
      subject { Board.new }
      it { should validate_presence_of(:title) }
      it { should validate_uniqueness_of(:title) }
  end

end
