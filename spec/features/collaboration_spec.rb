require 'rails_helper'

describe "collaboration" do
  let(:charlye) { User.new(
    username: 'charlyebrown',
    name: 'Charlye Tran',
    password: "123",
    password_confirmation: "123",
    email: "charlyetran@gmail.com")}

  let(:board1) { Board.new(
    title: 'Wonderfulness',
    category: category1)}

  it "should allow a user to add a board" do
    visit '/sessions/new'
    within("#session") do
      fill_in 'Username', :with => 'charlyebrown'
      fill_in 'Password', :with => '123'
    end

    visit '/boards/new'
    fill_in 'Title', :with => 'First Board'
    click_button 'Create New Board'
    expect()
  end


end
