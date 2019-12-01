User.create(id: 1, name: "test1", email: "test1", password: "test1")
User.create(id: 2, name: "test2", email: "test2", password: "test2")
User.create(id: 3, name: "test3", email: "test3", password: "test3")

Author.create(id: 1, name: "test1")
Author.create(id: 2, name: "test2")
Author.create(id: 3, name: "test3")

Book.create(title: "test1", user_id: 1, author_id: 1)
Book.create(title: "test2", user_id: 2, author_id: 2)
Book.create(title: "test3", user_id: 3, author_id: 3)