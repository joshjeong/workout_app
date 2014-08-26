# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

josh = User.create(name: 'josh', email: 'j', password: 'asdf')
l1 = josh.ledgers.create(item: "Movie", price: 10, note: "Guardians of the Angels", payment_type: "Credit")
l2 = josh.ledgers.create(item: "Soda", price: 4, note: "Sprite", payment_type: "Debit")
l3 = josh.ledgers.create(item: "3 Wisemen", price: 9, note: "Someone's Birthday", payment_type: "Cash")
l4 = josh.ledgers.create(item: "Hot Dog", price: 6, note: "What's Up Dog", payment_type: "PayPal")
l5 = josh.ledgers.create(item: "Game", price: 20, note: "Madden 2015", payment_type: "Venmo")
l6 = josh.ledgers.create(item: "Phone", price: 300, note: "iPhone 6", payment_type: "Credit")
l7 = josh.ledgers.create(item: "Candy", price: 1, note: "Snickers", payment_type: "Cash")


