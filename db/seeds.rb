# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require_relative './user_data.rb'

User.destroy_all

user_data = get_user_data()

user_data.each do |user|
    User.create!({
      username:     user[:username],
      steps:        user[:steps.to_i]
    })
end
