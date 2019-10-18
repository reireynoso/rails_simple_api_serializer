# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

photo1 = Photo.create(title: "Doggo Numero Uno", photo_url_string: "https://images.dog.ceo/breeds/dingo/n02115641_14117.jpg")

comment1 = Comment.create(content: "This photo is dope", owner: "Person 1", photo_id: photo1.id)
comment2 = Comment.create(content: "This photo", owner: "Person 2", photo_id: photo1.id)
comment3 = Comment.create(content: "This", owner: "Person 3", photo_id: photo1.id)
comment4 = Comment.create(content: "This dope", owner: "Person 4", photo_id: photo1.id)