author1 = Author.create(firstname: "Theo", lastname: "Sommer")
Author.create(firstname: "Andre", lastname: "Wiggers")

author1.books.create(title: "The King Fabian", year: "2016-02-11", description: "Eins der besten Bücher ever")
Book.create(author_id: 3, title: "The Princess Fabian", year: "2017-02-11", description: "Das zweit beste Buch ever")
