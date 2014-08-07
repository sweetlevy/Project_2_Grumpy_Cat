require 'rails_helper'

describe 'board' do
  let(:charlye) { User.new(
    username: 'Charlye',
    name: 'Charlye Tran',
    password: "123",
    password_confirmation: "123",
    email: "charlyetran@gmail.com")}

  let(:board3) { Board.new(
    title: 'Three',
    creator_id: charlye.id)}

  let(:collab1) { Collaboration.new(
    user_id: sarit.id,
    board_id: board1.id)}

  let(:category1) { Category.new(
    title: 'Pain Points',
    board_id: board1.id)}

  let(:sticky1) { Sticky.new(
    title: 'Age',
    content: '28',
    category_id: category1.id)}

  it "should show the stickies for a particular board" do
    visit(user_path(@charlye))
    click_on "Three"
    expect(page).to have_content("28")
  end
end
