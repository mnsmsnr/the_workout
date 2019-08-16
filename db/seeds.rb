# サンプルユーザー
User.create!(name:  "Admin User",
    email: "example@sample.co.jp",
    password:              "password",
    password_confirmation: "password",
    admin:     true,
    activated: true,
    activated_at: Time.zone.now)
  
10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@sample.co.jp"
  password = "password"
  User.create!(name:  name,
      email: email,
      password:              password,
      password_confirmation: password,
      activated: true,
      activated_at: Time.zone.now)
end
  
# サンプルメニュー
10.times do |n|
  training  = Faker::Name.training
  content = "sample training menu#{n+1}"
  Training.create!(training:  training,
      content: content,
      activated_at: Time.zone.now)
end

# サンプルコメント
users = User.order(:created_at).take(6)
10.times do
    comment = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(comment: commnet) }
end