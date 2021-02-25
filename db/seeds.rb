# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# タグ付紐付け(%w()の中に記述)
array = %w(スタイリスト stylist スタイリスト募集 デザイナー デザイナー募集 designer hairmake ヘアーメイク ヘアーメイク募集 フォトグラファー photographer フォトグラファー募集 アシスタント募集 作品撮り 企業案件 fashion ファッション 学生 学生OKモデル募集)
array.each{ |tag|
  tag_list = ActsAsTaggableOn::Tag.new
  tag_list.name = tag
  tag_list.save
}