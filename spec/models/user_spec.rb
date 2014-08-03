require 'rails_helper'

describe User do
  let(:sarit) { User.new(
    username: 'sarit',
    name: "Sarit Levy",
    email: "saritlevy@hotmail.com",
    password: "123",
    password_confirmation: "123"
    )}

  it "is valid with a username and password" do
    expect(sarit).to be_valid
  end

  it "is expected not to allow users to have the same username" do
    sarit.save!
    g = User.new(
      username: 'galit',
      name: 'Galit Levy',
      email: "galit@hotmail.com",
      password: "123",
      password_confirmation: "123"
      )
    expect(g).to be_invalid
  end



end
