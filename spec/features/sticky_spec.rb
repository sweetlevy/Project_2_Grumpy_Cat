require 'rails_helper'

describe "Sticky", js: true do
  let(:charlye) { User.new(
    username: 'charlyebrown',
    name: 'Charlye Tran',
    password: "123",
    password_confirmation: "123",
    email: "charlyetran@gmail.com")}

  let(:board1) { Board.new(
    title: 'One',
    creator_id: charlye.id)}

  let(:category1) { Category.new(
    title: 'Pain Points',
    board_id: board1.id)}

  let(:sticky1) { Sticky.new(
    title: 'Age',
    content: '28',
    category_id: category1.id)}

  it "shows sticky info when it is clicked" do
    visit(sticky_path(sticky1))
    expect(page).to have_content '28'
  end

  it "should have a link to edit the note if user has edit or full access" do
  end

  it "shows all stickies when a board is visited" do
    visit(board_path(board1))
    expect(page).to have_content 'Caucasian'
  end
end

describe "#add_sticky", js: true do
end

describe "#edit_sticky", js: true do
end

describe "#update_sticky", js: true do
end

describe "#delete_sticky", js: true do
end
