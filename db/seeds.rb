# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 MeasuringUnit.create([
    {name: "Cubic", symbol: "m3"},
    {name: "Each", symbol: "each"},
    {name: "Centimetres", symbol: "cm"},
    {name: "Metres", symbol: "m"},
    {name: "Grams", symbol: "g"},
    {name: "Kilograms", symbol: "kg"},
  ])