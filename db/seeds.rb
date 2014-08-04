user1 = User.create(username: "sarit", name: "Sarit Levy", email: 'saritlevy@hotmail.com', password: "123",
password_confirmation: "123")

user2 = User.create(username: "galit", name: "Galit Levy", email: 'galit@hotmail.com', password: "123",
password_confirmation: "123")

collaboration1 = Collaboration.create('title')

Board.create(title: "Awesome Board")
