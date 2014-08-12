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

# board1 = Board.create({title: "One", creator_id: sarit.id})
# board2 = Board.create({title: "Two", creator_id: francis.id})
# board3 = Board.create({title: "Three", creator_id: charlye.id})
# board4 = Board.create({title: "Four", creator_id: sean.id})
#
# sarit.boards <<
# collab1= Collaboration.create(user_id: sarit.id, board_id: board1.id)
# collab2= Collaboration.create(user_id: sarit.id, board_id: board2.id)
# collab3= Collaboration.create(user_id: sarit.id, board_id: board3.id)

# # category1 = Category.create({title: "Pain Points", board_id: board1.id})
# # category2 = Category.create({title: "Enjoyable", board_id: board1.id})
# # category3 = Category.create({title: "Themes", board_id: board1.id})
# # category4 = Category.create({title: "Types", board_id: board1.id})
# # category5 = Category.create({title: "To-Do", board_id: board2.id})
# # category6 = Category.create({title: "In Progess", board_id: board2.id})
# # category7 = Category.create({title: "Testing", board_id: board2.id})
# # category8 = Category.create({title: "Done", board_id: board3.id})
# # category9 = Category.create({title: "Whatever", board_id: board3.id})
# # category10 = Category.create({title: "Research", board_id: board3.id})
# # category11 = Category.create({title: "Presentation", board_id: board4.id})
# # category12 = Category.create({title: "Case Study", board_id: board4.id})
#
#   # board1.categories << category1 << category2 << category3 << category4
#   # board2.categories << category5 << category6 << category7
#   # board3.categories << category8 << category9 << category10
#   # board4.categories << category11 << category12
#
#
# sticky1 = Sticky.create({title: "Age" , content: "28", category_id: category1.id})
# sticky2 = Sticky.create({title: "Name", content: "Greg", category_id: category1.id})
# sticky3 = Sticky.create({title: "Race", content: "Caucasian", category_id: category1.id})
# sticky4 = Sticky.create({title: "Location", content: "Minneapolis", category_id: category1.id})
#
# sticky5 = Sticky.create({title: "Age" , content: "16", category_id: category2.id})
# sticky6 = Sticky.create({title: "Name", content: "Leslie", category_id: category2.id})
# sticky7 = Sticky.create({title: "Race", content: "African", category_id: category2.id})
# sticky8 = Sticky.create({title: "Location", content: "Boston", category_id: category2.id})
#
#
# sticky9 = Sticky.create({title: "Age" , content: "52", category_id: category3.id})
# sticky10 = Sticky.create({title: "Name", content: "Roseanne", category_id: category3.id})
# sticky11 = Sticky.create({title: "Race", content: "Latin", category_id: category3.id})
# sticky12 = Sticky.create({title: "Location", content: "Chicago", category_id: category3.id})
#
# sticky13 = Sticky.create({title: "Age" , content: "37", category_id: category4.id})
# sticky14 = Sticky.create({title: "Name", content: "Jonathan", category_id: category4.id})
# sticky15 = Sticky.create({title: "Race", content: "Asian", category_id: category4.id})
# sticky16 = Sticky.create({title: "Location", content: "San Francisco", category_id: category4.id})
#
# sticky17 = Sticky.create({title: "Age" , content: "22", category_id: category5.id})
# sticky18 = Sticky.create({title: "Name", content: "Harley", category_id: category5.id})
# sticky19 = Sticky.create({title: "Race", content: "Caucasian", category_id: category5.id})
# sticky20 = Sticky.create({title: "Location", content: "New York", category_id: category5.id})
#
# sticky21 = Sticky.create({title: "Age" , content: "44", category_id: category6.id})
# sticky22 = Sticky.create({title: "Name", content: "David", category_id: category6.id})
# sticky23 = Sticky.create({title: "Race", content: "African", category_id: category6.id})
# sticky24 = Sticky.create({title: "Location", content: "Portland", category_id: category6.id})
#
# sticky25 = Sticky.create({title: "Age" , content: "67", category_id: category7.id})
# sticky26 = Sticky.create({title: "Name", content: "Paula", category_id: category7.id})
# sticky27 = Sticky.create({title: "Race", content: "Asian", category_id: category7.id})
# sticky28 = Sticky.create({title: "Location", content: "Baton Rouge", category_id: category7.id})
#
# sticky29 = Sticky.create({title: "Age" , content: "31", category_id: category8.id})
# sticky30 = Sticky.create({title: "Name", content: "Carlos", category_id: category8.id})
# sticky31 = Sticky.create({title: "Race", content: "Latin", category_id: category8.id})
# sticky32 = Sticky.create({title: "Location", content: "Miami", category_id: category8.id})
#
# sticky33 = Sticky.create({title: "Age" , content: "49", category_id: category9.id})
# sticky34 = Sticky.create({title: "Name", content: "Elizabeth", category_id: category9.id})
# sticky39 = Sticky.create({title: "Race", content: "Caucasian", category_id: category9.id})
# sticky36 = Sticky.create({title: "Location", content: "Little Rock", category_id: category9.id})
#
# sticky37 = Sticky.create({title: "Age" , content: "56", category_id: category10.id})
# sticky38 = Sticky.create({title: "Name", content: "Tricia", category_id: category10.id})
# sticky39 = Sticky.create({title: "Race", content: "African", category_id: category10.id})
# sticky40 = Sticky.create({title: "Location", content: "Phoenix", category_id: category10.id})
#
# sticky41 = Sticky.create({title: "Age" , content: "63", category_id: category11.id})
# sticky42 = Sticky.create({title: "Name", content: "Sam", category_id: category11.id})
# sticky43 = Sticky.create({title: "Race", content: "Latin", category_id: category11.id})
# sticky44 = Sticky.create({title: "Location", content: "Malibu", category_id: category11.id})
#
# sticky45 = Sticky.create({title: "Age" , content: "25", category_id: category12.id})
# sticky46 = Sticky.create({title: "Name", content: "Susanne", category_id: category12.id})
# sticky47 = Sticky.create({title: "Race", content: "Caucasian", category_id: category12.id})
# sticky48 = Sticky.create({title: "Location", content: "Detroit", category_id: category12.id})
