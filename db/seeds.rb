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


basicsword = Weapon.create!({ weapon_type: "sword", weapon_name: "Wooden Sword", photo_url: "http://i.imgur.com/abUeoze.png", attack_points: 10 })
basicstaff = Weapon.create!({ weapon_type: "staff", weapon_name: "Simple Wooden Staff", photo_url: "http://i.imgur.com/H0hXach.png", attack_points: 10 })
basicarrow = Weapon.create!({ weapon_type: "arrow", weapon_name: "Bow and No Tip Arrow", photo_url: "http://i.imgur.com/uR90T10.png", attack_points: 10 })
leveltwosword = Weapon.create!({weapon_type: "sword", weapon_name: "Metal Sword", attack_points: 50 })
leveltwostaff = Weapon.create!({weapon_type: "staff", weapon_name: "Staff with Magic Orb on Top", attack_points: 50 })


maria = User.create!({ username: "mgutierrez0",steps: 314, photo_url: "http://i.imgur.com/1Keegdm.jpg", email: "mariagutierrez@lollipants.com", password: 'topsecret', password_confirmation: 'topsecret' })
mike = User.create!({ username: "mcoleman1",steps: 218, photo_url: "http://i.imgur.com/ewvc3Vv.jpg", email: "mikecoleman@handsompants.com", password: 'topsecret3', password_confirmation: 'topsecret3' })
rick = User.create!({ username: "rwatson2",steps: 971, photo_url: "http://i.imgur.com/t7Bs6Kz.jpg", email: "rickwatson2@candypants.com", password: 'topsecret4', password_confirmation: 'topsecret4' })
sasha = User.create!({ username: "spalmer3",steps: 805, photo_url: "http://i.imgur.com/3VfbkcJ.jpg", email: "sashfierce@sassypants.com", password: 'topsecret5', password_confirmation: 'topsecret5' })
pam = User.create!({ username: "pgarza4",steps: 259, photo_url: "http://i.imgur.com/Cl5LAuE.jpg", email: "pamgarza@simplepants.com", password: 'topsecret6', password_confirmation: 'topsecret6' })


Inventory.create!({weapon_id: basicsword.id, user_id: maria.id});
Inventory.create!({weapon_id: basicstaff.id, user_id: mike.id});
Inventory.create!({weapon_id: basicarrow.id, user_id: rick.id});
Inventory.create!({weapon_id: leveltwosword.id, user_id: sasha.id});
Inventory.create!({weapon_id: leveltwostaff.id, user_id: pam.id});
