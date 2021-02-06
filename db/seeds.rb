# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email: '1@1',
  password: 'aaaaaa',
  name: '山田',
  based_in: '東京',
  phone_number: '12345678900',
  job_category_id: 2,
  is_active: 'true',
  introduction: "スタイリストです。"
)