# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.create(title: '今日のごはん', body: '味噌汁、ご飯')
Article.create(title: '昨日のごはん', body: 'パン、サラダ')
Article.create(title: '一昨日のごはん', body: 'ハンバーグ、オムレツ')

User.create(name: 'スズキ',email: "aaa@gmail.com", password:"AAAAAA")
User.create(name: 'サイトウ',email: "bbb@gmail.com", password:"BBBBBB")
User.create(name: 'ヤマダ',email: "ccc@gmail.com", password:"CCCCCC")
