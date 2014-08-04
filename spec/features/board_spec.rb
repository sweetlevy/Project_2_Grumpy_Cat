require 'rails_helper'

describe 'board' do
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

  it "should show the boards for a particular user" do

  end
end

describe '#add_board' do
  let(:charlye) { User.new(
    username: 'charlyebrown',
    name: 'Charlye Tran',
    password: "123",
    password_confirmation: "123",
    email: "charlyetran@gmail.com")}

end
