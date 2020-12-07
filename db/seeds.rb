# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times {
  WishList.create(
    title: Faker::Name.unique.name,
    item_count: rand(1..10),
    deliver_date: Faker::Date.forward(days: 23)
 )
}

WishItem.create({
  
})