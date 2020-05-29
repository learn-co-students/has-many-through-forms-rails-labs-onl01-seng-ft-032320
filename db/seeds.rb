# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cats = %w(mean nice constructive silly)
users = %w(ben meghan adam)
cats.each do |cat|
    Category.create(name: cat)
end

users.each do |user|
    User.create(username: user)
end