#create these in rails c because it will mess up ID order
User.create(id: 1, name: "test1", email: "test1", password: "test1")
User.create(id: 2, name: "test2", email: "test2", password: "test2")
User.create(id: 3, name: "test3", email: "test3", password: "test3")

Author.create(id: 1, name: "test1")
Author.create(id: 2, name: "test2")
Author.create(id: 3, name: "test3")
Author.create(id: 4, name: "test1 again")
Author.create(id: 5, name: "test2 again")
Author.create(id: 6, name: "test3 again")

Book.create(title: "test1", author: "test 1", user_id: 1)
Book.create(title: "test1 again", author:"test1 again", user_id: 1)
Book.create(title: "test2", user_id: 2, author: "test2")
Book.create(title: "test2 again", user_id: 2, author: "test2 again")
Book.create(title: "test3", user_id: 3, author: "test3")
Book.create(title: "test3 again", user_id: 3, author: "test3 again")