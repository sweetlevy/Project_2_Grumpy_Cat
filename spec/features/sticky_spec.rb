require 'rails_helper'

describe "Sticky", js: true do
  let(:charlye) { User.new(
    username: 'charlyebrown',
    name: 'Charlye Tran',
    password: "123",
    password_confirmation: "123",
    email: "charlyetran@gmail.com")}

  let(:category1) { Category.new(
    title: 'rhyme'
    )}

  let(:board1) { Board.new(
    title: 'Wonderfulness',
    category: category1)}

  let(:sticky1) { Sticky.new(
    title: 'Green Eggs and Ham',
    content: 'Sam I am loves green eggs and ham',
    category: category1)}

  it "shows sticky info when it is clicked" do
    visit(sticky_path(sticky1))
    expect(page).to have_content 'Green Eggs and Ham'
  end

  it "should have a link to edit the note if user has edit or full access" do
  end

  it "shows all Stick_Its when a board is visited" do
    visit(board_path(board1))
    expect(page).to have_content 'Green Eggs and Ham'
  end
end

describe "#add_sticky", js: true do
end

describe "#edit_sticky", js: true do
end

describe "#update_sticky", js: true do
end

describe "#delete_sticky" js: true do
end
