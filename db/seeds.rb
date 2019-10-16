# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


(20..100).to_a.sample.times do
  User.create! do |u|
    u.first_name = FFaker::Name.first_name
    u.last_name = FFaker::Name.last_name
    u.date_of_birth = Time.at(0 + rand * (Time.now.to_f - 0.to_f))
  end
end

User.all.each do |u|
  (5..130).to_a.sample.times do
    u.posts.create! do |p|
      p.title = FFaker::Book.title
      p.content = FFaker::Lorem.paragraph((1..10).to_a.sample)
      p.rating = (1..10).to_a.sample
    end
  end
end