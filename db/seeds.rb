99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n + 1}@mail.com"
  password = 'password'
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               confirmed_at: Time.zone.now,
               agreement: true)
end

users = User.order(:id).take(6)
20.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.tweets.create!(quote: content, book_id: 1) }
end

users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
