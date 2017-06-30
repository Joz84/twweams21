# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u0 =  User.create(email: "admin@gmail.com", password: "azerty", first_name: 'Super', last_name: 'Admin', birthday: '19/08/1998', gender: 1, city: 'Bordeaux', country: 'France')
u1 =  User.create(email: "a@gmail.com", password: "azerty", first_name: 'Alice', last_name: 'Wonder', birthday: '05/06/1999', gender: 2, city: 'Pessac', country: 'France')
u2 =  User.create(email: "b@gmail.com", password: "azerty", first_name: 'Boby', last_name: 'Bricoleur', birthday: '23/06/1962', gender: 1, city: 'Liverpool', country: 'Angleterre')
u3 =  User.create(email: "c@gmail.com", password: "azerty", first_name: 'Coco', last_name: 'Castor', birthday: '27/01/1957', gender: 2, city: 'Hanoi', country: 'Vietnam')
