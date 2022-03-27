# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

building_store = Store.create()

unit_store = Store.create()

lumberMill = Store_Building.create(cost: 50, name: 'Lumber Mill', description: 'Produces Wood, collection time is 10 minutes.', unlock_level: 1, store_id: building_store.id)

farm = Store_Building.create(cost: 100, name: 'Farm', description: 'Produces Food, collection time is 10 minutes.', unlock_level: 1, store_id: building_store.id)

barracks = Store_Building.create(cost: 150, name: 'Barracks', description: 'Produces Swordsmen or Spearmen, collection time is 15 minutes.', unlock_level: 2, store_id: building_store.id)

quarry = Store_Building.create(cost: 300, name: 'Quarry', description: 'Produces Stone, collection time is 30 minutes.', unlock_level: 2, store_id: building_store.id)

forge = Store_Building.create(cost: 300, name: 'Forge', description: 'Produces Iron, collection time is 25 minutes.', unlock_level: 3, store_id: building_store.id)

stable = Store_Building.create(cost: 500, name: 'Stable', description: 'Produces Lancers, collection time is 20 minutes.', unlock_level: 3, store_id: building_store.id)

fletcher = Store_Building.create(cost: 400, name: 'Fletcher', description: 'Produces Archers, collection time is 20 minutes.', unlock_level: 3, store_id: building_store.id)

merc_swordsman = Store_Unit.create(cost: 150, name: 'Swordsman', description: 'Good against Spearmen', attack: 5, defense: 5, unlock_level: 3, store_id: unit_store.id)

merc_spearmen = Store_Unit.create(cost: 100, name: 'Spearmen', description: 'Good against Lancers', attack: 4, defense: 4, unlock_level: 3, store_id: unit_store.id)

merc_archer = Store_Unit.create(cost: 125, name: 'Archer', description: 'Good against Spearmen', attack: 5, defense: 2, unlock_level: 4, store_id: unit_store.id)

merc_lancer = Store_Unit.create(cost: 250, name: 'Lancer', description: 'Good against Archers and Swordsmen', attack: 8, defense: 7, unlock_level: 5, store_id: unit_store.id)