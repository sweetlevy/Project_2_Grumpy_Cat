require 'rails_helper'

describe 'board' do
  let(:charlye) { User.new(
    username: 'charlyebrown',
    name: 'Charlye Tran',
    password: "123",
    password_confirmation: "123",
    email: "charlyetran@gmail.com")}

  let(:board1) { Board.new(
    title: 'Wonderfulness',
    creator_id: charlye.id)}

  let(:category1) { Category.new(
    title: 'rhyme',
    board_id: board1.id
    )}

  let(:sticky1) { Sticky.new(
    title: 'Green Eggs and Ham',
    content: 'Sam I am loves green eggs and ham',
    category_id: category1.id)}

  it "should show the stickies for a particular board" do
    visit(user_path(@charlye))
    click_on "Wonderfulness"
    expect(page).to have_content("Green Eggs and Ham")
  end
end

describe '#create_board' do
  let(:charlye) { User.new(
    username: 'charlyebrown',
    name: 'Charlye Tran',
    password: "123",
    password_confirmation: "123",
    email: "charlyetran@gmail.com")}

  visit(user_path(@charlye))
  click_on "Create a Board"
  expect(page).to have_content("Title")

end
