# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require_relative "../models/user"
require_relative "../models/item"

maria = User.create({username: "mgutierrez0", steps: 314})
mike = User.create({username: "mcoleman1", steps: 218})
rick = User.create({username: "rwatson2", steps: 971})
sarah = User.create({username: "spalmer3", steps: 805})
pam = User.create({username: "pgarza4", steps: 259})

Item.create({name: "sword", type: "weapon", user: maria})
Item.create({name: "bow & arrow", type: "weapon", user: mike})
Item.create({name: "staff", type: "weapon", user: rick})
Item.create({name: "sword", type: "weapon", user: sarah})
Item.create({name: "staff", type: "weapon", user: pam})
