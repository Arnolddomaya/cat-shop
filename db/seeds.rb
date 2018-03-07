# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create( email:"dodo@gmail.com", password:"motdepasse", password_confirmation:"motdepasse")
User.create( email:"dada@gmail.com", password:"motdepasse", password_confirmation:"motdepasse")

my_items =[]

i=1
10.times do
  my_items << {  title:"MonChat#{i}",
  description:"Description de MonChat#{i}",
  price: i,
  image_url: "cat_img_#{i}"}
  i+=1
end

cats = Item.create(my_items)
