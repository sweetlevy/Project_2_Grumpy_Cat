require 'rails_helper'

describe "the signup process", :type => :feature do
  before :each do
    User.create(
    :username => 'Sarit',
    :name => 'Sarit',
    :email => 'Sarit@example.com',
    :password => '123',
    :password_confirmation => '123')
  end

  it "signs me in" do
    visit '/login'
    fill_in 'Username', :with => 'Sarit'
    fill_in 'Password', :with => '123'

    click_button 'Log In'
    save_and_open_page
    expect(page).to have_content "Your Profile"
  end
end

describe "#edit_user" do
end

describe "#delete_user" do
end
