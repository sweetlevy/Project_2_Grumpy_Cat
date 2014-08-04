# require 'rails_helper'
#
# describe "sticky_access_rights" do
#   let(:charlye) { User.new(
#     username: 'charlyebrown',
#     name: 'Charlye Tran',
#     password: "123",
#     password_confirmation: "123",
#     email: "charlyetran@gmail.com")}
#
#   let(:sticky1) { Sticky.new(
#     title: 'Green Eggs and Ham',
#     content: 'Sam I am loves green eggs and ham')}
#
#   let(:first_access) {StickyAccessRights.new(
#     user_id = charlye.id
#     sticky_id = sticky1.id
#     access: 'full'
#     )}
#   it 'should have access rights' do
#     expect(first_access.sticky_id).to eq(sticky1.id)
#     expect(first_access.user_id).to eq(charlye.id)
#   end
# end
