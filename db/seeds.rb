# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cat1 = Category.create(name: 'cat1')
cat2 = Category.create(name: 'cat2')
cat3 = Category.create(name: 'cat3')
cat4 = Category.create(name: 'cat4')
cat5 = Category.create(name: 'cat5')

comment1 = Comment.create(content: 'yeah dude!', user_id: 1, post_id: 1)
comment2 = Comment.create(content: 'this is a comment', user_id: 1, post_id: 2)
comment3 = Comment.create(content: 'i am a comment!', user_id: 1, post_id: 1)
comment4 = Comment.create(content: 'never read the comments', user_id: 1, post_id: 2)

user1 = User.create(username: 'grampa', email: 'grampa@grampa.com')
user2 = User.create(username: 'ronnie', email: 'ronnie@ronnie.com')
