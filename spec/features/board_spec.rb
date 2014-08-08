require 'rails_helper'

describe 'board', js: true do
  let(:charlye) { User.create(
    username: 'Charlye',
    name: 'Charlye Tran',
    password: "123",
    password_confirmation: "123",
    email: "charlyetran@gmail.com")}

  let(:board3) { Board.create(
    title: 'Three',
    creator_id: charlye.id)}

  let(:collab1) { Collaboration.create(
    user_id: sarit.id,
    board_id: board1.id)}

  let(:category1) { Category.create(
    title: 'Pain Points',
    board_id: board1.id)}

  let(:sticky1) { Sticky.create(
    title: 'Age',
    content: '28',
    category_id: category1.id)}

  it "should show the stickies for a particular board" do
    visit(user_path(:charlye))
    click_link('new_board')
    fill_in 'board_title', with: 'Five'
    click_button 'Create Board'

  end
end
