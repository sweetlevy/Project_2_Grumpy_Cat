User.destroy_all
Board.destroy_all
Category.destroy_all
Sticky.destroy_all

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

  board1.creator_id = sarit.id
  board2.creator_id = francis.id
  board3.creator_id = charlye.id
  board4.creator_id = sean.id

category1 = Category.create({title: "Pain Points"})
category2 = Category.create({title: "Enjoyable"})
category3 = Category.create({title: "Themes"})
category4 = Category.create({title: "Types"})
category5 = Category.create({title: "To-Do"})
category6 = Category.create({title: "In Progess"})
category7 = Category.create({title: "Testing"})
category8 = Category.create({title: "Done"})
category10 = Category.create({title: "Research"})
category11 = Category.create({title: "Presentation"})
category12 = Category.create({title: "Case Study"})

  board1.categories << category1 << category2 << category3 << category4
  board2.categories << category5 << category6 << category7
  board3.categories << category8 << category9 << category10
  board4.categories << category11 << category12


sticky1 = Sticky.create({title: "Age" , content: "28"})
sticky2 = Sticky.create({title: "Name", content: "Greg"})
sticky3 = Sticky.create({title: "Race", content: "Caucasian"})
sticky4 = Sticky.create({title: "Location", content: "Minneapolis"})

sticky5 = Sticky.create({title: "Age" , content: "16"})
sticky6 = Sticky.create({title: "Name", content: "Leslie"})
sticky7 = Sticky.create({title: "Race", content: "African"})
sticky8 = Sticky.create({title: "Location", content: "Boston"})


sticky9 = Sticky.create({title: "Age" , content: "52"})
sticky10 = Sticky.create({title: "Name", content: "Roseanne"})
sticky11 = Sticky.create({title: "Race", content: "Latin"})
sticky12 = Sticky.create({title: "Location", content: "Chicago"})

sticky13 = Sticky.create({title: "Age" , content: "37"})
sticky14 = Sticky.create({title: "Name", content: "Jonathan"})
sticky15 = Sticky.create({title: "Race", content: "Asian"})
sticky16 = Sticky.create({title: "Location", content: "San Francisco"})

sticky17 = Sticky.create({title: "Age" , content: "22"})
sticky18 = Sticky.create({title: "Name", content: "Harley"})
sticky19 = Sticky.create({title: "Race", content: "Caucasian"})
sticky20 = Sticky.create({title: "Location", content: "New York"})

sticky21 = Sticky.create({title: "Age" , content: "44"})
sticky22 = Sticky.create({title: "Name", content: "David"})
sticky23 = Sticky.create({title: "Race", content: "African"})
sticky24 = Sticky.create({title: "Location", content: "Portland"})

sticky25 = Sticky.create({title: "Age" , content: "67"})
sticky26 = Sticky.create({title: "Name", content: "Paula"})
sticky27 = Sticky.create({title: "Race", content: "Asian"})
sticky28 = Sticky.create({title: "Location", content: "Baton Rouge"})

sticky29 = Sticky.create({title: "Age" , content: "31"})
sticky30 = Sticky.create({title: "Name", content: "Carlos"})
sticky31 = Sticky.create({title: "Race", content: "Latin"})
sticky32 = Sticky.create({title: "Location", content: "Miami"})

sticky33 = Sticky.create({title: "Age" , content: "49"})
sticky34 = Sticky.create({title: "Name", content: "Elizabeth"})
sticky35 = Sticky.create({title: "Race", content: "Caucasian"})
sticky36 = Sticky.create({title: "Location", content: "Little Rock"})

sticky37 = Sticky.create({title: "Age" , content: "56"})
sticky38 = Sticky.create({title: "Name", content: "Tricia"})
sticky39 = Sticky.create({title: "Race", content: "African"})
sticky40 = Sticky.create({title: "Location", content: "Phoenix"})

sticky41 = Sticky.create({title: "Age" , content: "63"})
sticky42 = Sticky.create({title: "Name", content: "Sam"})
sticky43 = Sticky.create({title: "Race", content: "Latin"})
sticky44 = Sticky.create({title: "Location", content: "Malibu"})

sticky45 = Sticky.create({title: "Age" , content: "25"})
sticky46 = Sticky.create({title: "Name", content: "Susanne"})
sticky47 = Sticky.create({title: "Race", content: "Caucasian"})
sticky48 = Sticky.create({title: "Location", content: "Detroit"})

  category1.stickies << sticky1 << sticky2 << sticky3 << sticky4

  category2.stickies << sticky5 << sticky6 << sticky7 << sticky8

  category3.stickies << sticky9 << sticky10 << sticky11 << sticky12

  category4.stickies << sticky13 << sticky14 << sticky15 << sticky16

  category5.stickies << sticky17 << sticky18 << sticky19 << sticky20

  category6.stickies << sticky21 << sticky22 << sticky23 << sticky24

  category7.stickies << sticky25 << sticky26 << sticky27 << sticky28

  category8.stickies << sticky29 << sticky30 << sticky31 << sticky32

  category9.stickies << sticky33 << sticky34 << sticky35 << sticky36

  category10.stickies << sticky37 << sticky38 << sticky39 << sticky40

  category11.stickies << sticky41 << sticky42 << sticky43 << sticky44

  category12.stickies << sticky45 << sticky46 << sticky47 << sticky48
