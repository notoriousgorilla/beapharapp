# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

inv1 = Collection.create(name: "Hund")
inv2 = Collection.create(name: "Katt")

dog_p1 = Product.create(name: "Hundesnacks Bøtter")
dog_p2 = Product.create(name: "Hundesnacks Funksjon")

cat_p1 = Product.create(name: "Kattesnacks")

#Hund --> Hundesnacks bøtter
a_item1 = Item.create(name: "Treningsmix Mini 500g", item_number: 14110, item_value: 38.00)
a_item3 = Item.create(name: "Duo Hjerte Mix 500g", item_number: 14111, item_value: 38.00)
a_item4 = Item.create(name: "Mix 5 typer 500g", item_number: 14112, item_value: 38.00)
a_item5 = Item.create(name: "Hundeben Mix 500g", item_number: 14113, item_value: 38.00)
a_item6 = Item.create(name: "Margbein Mix 500g", item_number: 17484, item_value: 38.00)

#Hund --> Hundesnacks funksjon
b_item1 = Item.create(name: "Beaphar Dental Treat 150g", item_number: 15328, item_value: 20.00)
b_item2 = Item.create(name: "Beaphar Dental Sticks S/M 150g", item_number: 13489, item_value: 12.50)
b_item3 = Item.create(name: "Beaphar Dental Sticks L 150g", item_number: 13489, item_value: 12.50)

#Katt --> Kattesnacks
cat_a_item1 = Item.create(name: "Malt Bits 35g", item_number: 11648, item_value: 13.00)

dog_p1.items << [a_item1, a_item3, a_item4, a_item5, a_item6]
dog_p2.items << [b_item1, b_item2, b_item3]

cat_p1.items << [cat_a_item1]

inv1.products << [dog_p1, dog_p2]
inv2.products << [cat_p1]
