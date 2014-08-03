describe "Category", js: true do

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

  expect(sticky1.categories).to include(category1)
  expect(board1.categories).to include(category1)
end
