# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
RESTAURANT_CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']

10.times do
  name = Faker::Food.vegetables + ' Restaurant'
  address = Faker::Address.full_address
  category = RESTAURANT_CATEGORIES.sample
  phone_number = Faker::PhoneNumber.phone_number

  Restaurant.create(name: name,
                    address: address,
                    category: category,
                    phone_number: phone_number)
end
