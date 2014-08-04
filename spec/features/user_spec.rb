require 'rails_helper'

describe "the signup process", js: true, :type => :feature do
  before :each do
    User.make(
    :username => 'User1',
    :password => '123',
    :password_confirmation => '123')
  end

  it "signs me in" do
    visit '/sessions/new'
    within("#session") do
      fill_in 'Username', :with => 'User1'
      fill_in 'Password', :with => '123'
    end
    click_button 'Log in'
    expect(page).to have_content 'Success'
  end
end

describe "#edit_user" do
end

describe "#delete_user" do
end
