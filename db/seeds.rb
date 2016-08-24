# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

Page.delete_all
table = CSV.table(Rails.root.join("db","seeds.csv"),encoding: "Shift_JIS:UTF-8")
table.each do |row|
  Page.create(row.to_h)
end

