require 'rails_helper'

describe "Stick_Its", js: true do
  let(:charlye) { User.new(
    username: 'charlyebrown',
    name: 'Charlye Tran',
    password: "123",
    password_confirmation: "123",
    email: "charlyetran@gmail.com")}

  let(:board1) { Board.new(
    title: 'Wonderfulness',
    )}

  its "shows all Stick_Its when a board is visited" do
    visit(login_path)
  end
end
