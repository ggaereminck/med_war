# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

store1 = Store.create()

lumberMill = Store_Building.create(cost: 50, name: 'Lumber Mill', description: 'Produces Wood, collection time is 20 minutes.', unlock_level: 1, store_id: store1.id)

farm = Store_Building.create(cost: 100, name: 'Farm', description: 'Produces Food, collection time is 20 minutes.', unlock_level: 1, store_id: store1.id)

barracks = Store_Building.create(cost: 150, name: 'Barracks', description: 'Produces Swordsmen, collection time is 20 minutes.', unlock_level: 2, store_id: store1.id)

