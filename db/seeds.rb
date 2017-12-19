require 'random_data'

User.create!(
    first_name: 'Paul',
    last_name: 'Hurrle',
    username: "phurrle",
    password: "password",
    email: "paul_nikki@cox.net"
)

10.times do
    User.create!(
        first_name: RandomData.random_word,
        last_name: RandomData.random_word,
        username: RandomData.random_word,
        password: "password",
        email: "#{RandomData.random_word}@example.com"
    )
end

users = User.all

10.times do
    List.create!(
        name: RandomData.random_word,
        user_id: users.sample.id,
    )
end

lists = List.all

50.times do
    Item.create!(
        list_id: lists.sample.id,
        description: RandomData.random_sentence,
    )
end

items = Item.all

puts "#{users.count} users created"
puts "#{lists.count} lists created"
puts "#{items.count} items created"
