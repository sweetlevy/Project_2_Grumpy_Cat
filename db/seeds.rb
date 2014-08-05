sarit = User.create({username: "Sarit", name: "Sarit Levy", email: 'saritlevy@hotmail.com', password: "123",
password_confirmation: "123"})
francis = User.create({username: "Francis", name: "Francis Castillo", email: 'fgc0077@gmail.com', password: "123",
password_confirmation: "123"})
charlye = User.create({username: "Charlye", name: "Charlye Tran", email: 'charlyetran@gmail.com', password: "123",
password_confirmation: "123"})
sean = User.create({username: "Sean", name: "Sean Jennings", email: 'sejenc.dev@gmail.com', password: "123",
password_confirmation: "123"})

board1 = Board.create({title: "One"})
board2 = Board.create({title: "Two"})
board3 = Board.create({title: "Three"})
board4 = Board.create({title: "Four"})

  sarit.boards   << board1 << board2 << board3 << board4
  francis.boards << board1 << board2 << board3 << board4
  charlye.boards << board1 << board2 << board3 << board4
  sean.boards    << board1 << board2 << board3 << board4

category1 = Category.create({title: "Pain Points"})
category2 = Category.create({title: "Enjoyable"})
category3 = Category.create({title: "Themes"})
category4 = Category.create({title: "Types"})

  board1.categories << category1 << category2 << category3 << category4
  board2.categories << category1 << category2 << category3 << category4
  board3.categories << category1 << category2 << category3 << category4
  board4.categories << category1 << category2 << category3 << category4


sticky1 = Sticky.create({title: "Age" , content: "28"})
sticky2 = Sticky.create({title: "Age" , content: "16"})
sticky3 = Sticky.create({title: "Age" , content: "52"})
sticky4 = Sticky.create({title: "Age" , content: "37"})

sticky5 = Sticky.create({title: "Name", content: "Greg"})
sticky6 = Sticky.create({title: "Name", content: "Leslie"})
sticky7 = Sticky.create({title: "Name", content: "Roseanne"})
sticky8 = Sticky.create({title: "Name", content: "Jonathan"})

sticky9 = Sticky.create({title: "Race", content: "Caucasian"})
sticky10 = Sticky.create({title: "Race", content: "Latino"})
sticky11 = Sticky.create({title: "Race", content: "Asian"})
sticky12 = Sticky.create({title: "Race", content: "African"})

sticky13 = Sticky.create({title: "Location", content: "New York"})
sticky14 = Sticky.create({title: "Location", content: "San Francisco"})
sticky15 = Sticky.create({title: "Location", content: "Chicago"})
sticky16 = Sticky.create({title: "Location", content: "Minneapolis"})

  category1.stickies << sticky1 << sticky2 << sticky3 << sticky4 << sticky5 << sticky6 << sticky7 << sticky8 << sticky9 << sticky10 << sticky11 << sticky12 << sticky13 << sticky14 << sticky15 << sticky16

  category2.stickies << sticky1 << sticky2 << sticky3 << sticky4 << sticky5 << sticky6 << sticky7 << sticky8 << sticky9 << sticky10 << sticky11 << sticky12 << sticky13 << sticky14 << sticky15 << sticky16

  category3.stickies << sticky1 << sticky2 << sticky3 << sticky4 << sticky5 << sticky6 << sticky7 << sticky8 << sticky9 << sticky10 << sticky11 << sticky12 << sticky13 << sticky14 << sticky15 << sticky16

  category4.stickies << sticky1 << sticky2 << sticky3 << sticky4 << sticky5 << sticky6 << sticky7 << sticky8 << sticky9 << sticky10 << sticky11 << sticky12 << sticky13 << sticky14 << sticky15 << sticky16
