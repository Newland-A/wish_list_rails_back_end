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
    item_count: 1,
    delivery_date: Faker::Date.forward(days: 23)
 )
}
# 10.times {
  WishItem.create([{
    name: "Teddy Bear",
    color: "White",
    height: rand(4..25),
    weight: rand(5..25),
    link: "./wish-item-img/teddy_bear.jpeg",
    description: "askldfhas uynfiaus nwiuerry iwuef sdjdah sdfgwayier gwfb hsadjhb usyadfgs u  sildgfwf faiiuwehfw",
    price: Faker::Number.within(range: 10..200),
    wish_list_id: 1
  },
  {
    name: "Fire Truck",
    color: "Red",
    height: rand(4..25),
    weight: rand(5..25),
    link: "./wish-item-img/fire_truck.jpg",
    description: "askldfhas uynfiaus nwiuerry iwuef sdjdah sdfgwayier gwfb hsadjhb usyadfgs u  sildgfwf faiiuwehfw",
    price: Faker::Number.within(range: 10..200),
    wish_list_id: 2
  },
  {
    name: "BasketBall",
    color: "Orange",
    height: rand(4..25),
    weight: rand(5..25),
    link: "./wish-item-img/basketball.jpg",
    description: "askldfhas uynfiaus nwiuerry iwuef sdjdah sdfgwayier gwfb hsadjhb usyadfgs u  sildgfwf faiiuwehfw",
    price: Faker::Number.within(range: 10..200),
    wish_list_id: 3
  },
  {
    name: "China Doll",
    color: "Red",
    height: rand(4..25),
    weight: rand(5..25),
    link: "./wish-item-img/china_doll.jpg",
    description: "askldfhas uynfiaus nwiuerry iwuef sdjdah sdfgwayier gwfb hsadjhb usyadfgs u  sildgfwf faiiuwehfw",
    price: Faker::Number.within(range: 10..200),
    wish_list_id: 4
  },
  {
    name: "Roller Skates",
    color: "Purple",
    height: rand(4..25),
    weight: rand(5..25),
    link: "./wish-item-img/roller_skates.jpg",
    description: "askldfhas uynfiaus nwiuerry iwuef sdjdah sdfgwayier gwfb hsadjhb usyadfgs u  sildgfwf faiiuwehfw",
    price: Faker::Number.within(range: 10..200),
    wish_list_id: 5
  },
  {
    name: "Wolf Statue",
    color: "Blue",
    height: rand(4..25),
    weight: rand(5..25),
    link: "./wish-item-img/wolf_statue.jpg",
    description: "askldfhas uynfiaus nwiuerry iwuef sdjdah sdfgwayier gwfb hsadjhb usyadfgs u  sildgfwf faiiuwehfw",
    price: Faker::Number.within(range: 10..200),
    wish_list_id: 6
  },
  {
    name: "Assorted Coloring Tools",
    color: "Multi-Colored",
    height: rand(4..25),
    weight: rand(5..25),
    link: "./wish-item-img/assorted_coloring_tools.jpg",
    description: "askldfhas uynfiaus nwiuerry iwuef sdjdah sdfgwayier gwfb hsadjhb usyadfgs u  sildgfwf faiiuwehfw",
    price: Faker::Number.within(range: 10..200),
    wish_list_id: 7
  },
  {
    name: "Toddler Drill Set",
    color: "Red, Orange, Black",
    height: rand(4..25),
    weight: rand(5..25),
    link: "./wish-item-img/toddler_drill_set.jpg",
    description: "askldfhas uynfiaus nwiuerry iwuef sdjdah sdfgwayier gwfb hsadjhb usyadfgs u  sildgfwf faiiuwehfw",
    price: Faker::Number.within(range: 10..200),
    wish_list_id: 8
  },
  {
    name: "Unicorn Stuffed Animal",
    color: "Pink, White",
    height: rand(4..25),
    weight: rand(5..25),
    link: "./wish-item-img/unicorn_stuffed_animal.jpg",
    description: "askldfhas uynfiaus nwiuerry iwuef sdjdah sdfgwayier gwfb hsadjhb usyadfgs u  sildgfwf faiiuwehfw",
    price: Faker::Number.within(range: 10..200),
    wish_list_id: 9
  },
  {
    name: "Farm Set",
    color: "Red, Green",
    height: rand(4..25),
    weight: rand(5..25),
    link: "./wish-item-img/farm_set.jpg",
    description: "askldfhas uynfiaus nwiuerry iwuef sdjdah sdfgwayier gwfb hsadjhb usyadfgs u  sildgfwf faiiuwehfw",
    price: Faker::Number.within(range: 10..200),
    wish_list_id: 10
  }]
  )
# }
