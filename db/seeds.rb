# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' } { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Inventory.destroy_all
Weapon.destroy_all
User.destroy_all


basicsword = Weapon.create!({ weapon_kind: "sword", weapon_name: "Wooden Sword", hp: 10 })
basicstaff = Weapon.create!({ weapon_kind: "staff", weapon_name: "Simple Wooden Staff", hp: 10 })
basicarrow = Weapon.create!({ weapon_kind: "arrow", weapon_name: "Bow and No Tip Arrow", hp: 10 })
leveltwosword = Weapon.create!({weapon_kind: "sword", weapon_name: "Metal Sword", hp: 50 })
leveltwostaff = Weapon.create!({weapon_kind: "staff", weapon_name: "Staff with Magic Orb on Top", hp: 50 })


maria = User.create!({ username: "mgutierrez0",steps: 314, photo_url: "http://i.imgur.com/1Keegdm.jpg", email: "mariagutierrez@lollipants.com" })
mike = User.create!({ username: "mcoleman1",steps: 218, photo_url: "http://i.imgur.com/ewvc3Vv.jpg", email: "mikecoleman@handsompants.com" })
rick = User.create!({ username: "rwatson2",steps: 971, photo_url: "http://i.imgur.com/t7Bs6Kz.jpg", email: "rickwatson2@candypants.com" })
sasha = User.create!({ username: "spalmer3",steps: 805, photo_url: "http://i.imgur.com/3VfbkcJ.jpg", email: "sashfierce@sassypants.com" })
pam = User.create!({ username: "pgarza4",steps: 259, photo_url: "http://i.imgur.com/Cl5LAuE.jpg", email: "pamgarza@simplepants.com" })


i = maria.inventories.first
i.weapon = basicsword
i.save
i = mike.inventories.first
i.weapon = basicstaff
i.save
i = rick.inventories.first
i.weapon = basicarrow
i.save
i = sasha.inventories.first
i.weapon = leveltwosword
i.save
i = pam.inventories.first
i.weapon = leveltwostaff
i.save
