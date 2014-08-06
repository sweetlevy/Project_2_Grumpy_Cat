describe "Category", js: true do

  let(:charlye) { User.create(
    username: 'charlyebrown',
    name: 'Charlye Tran',
    password: "123",
    password_confirmation: "123",
    email: "charlyetran@gmail.com")}

  let(:board1) { Board.create(
    title: 'Wonderfulness',
    creator_id: charlye.id)}

  let(:category1) { Category.create(
    title: 'rhyme',
    board_id: board1.id)}

  let(:sticky1) { Sticky.create(
    title: 'Green Eggs and Ham',
    content: 'Sam I am loves green eggs and ham',
    category_id: category1.id)}

  # expect(category1.stickies).to include(sticky1)
  # expect(board1.categories).to include(category1)
end
