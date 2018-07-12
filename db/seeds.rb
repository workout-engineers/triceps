99.times do |n|
  users = [7]

  quote  = Faker::Lorem.sentence
  comment = Faker::Lorem.sentence
  book_id = 1
  user_id = users.sample

  Tweet.create!(quote: quote,
               comment: comment,
               book_id: book_id,
               user_id: user_id)
end