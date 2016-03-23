# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' } { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Weapon.destroy_all
User.destroy_all


maria = User.create!({username: "mgutierrez0",steps: 314, photo_url: "thisismaria.png", email: "mariagutierrez@lollipants.com"})
mike = User.create!({username: "mcoleman1",steps: 218, photo_url: "thisismike.png", email: "mikecoleman@handsompants.com"})
rick = User.create!({username: "rwatson2",steps: 971, photo_url: "thisisrick.png", email: "rickwatson2@candypants.com"})
sasha = User.create!({username: "spalmer3",steps: 805, photo_url: "thisissasha.png", email: "sashfierce@sassypants.com"})
pam = User.create!({username: "pgarza4",steps: 259, photo_url: "thisispam.png", email: "pamgarza@simplepants.com"})

Weapon.create({weapon_kind: "sword", user: maria})
Weapon.create({weapon_kind: "sword", user: mike})
Weapon.create({weapon_kind: "staff", user: rick})
Weapon.create({weapon_kind: "arrow", user: sasha})
Weapon.create({weapon_kind: "staff", user: pam})
