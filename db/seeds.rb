# # サンプルユーザー
# User.create!(name:  "Admin User",
#     email: "example@sample.co.jp",
#     password:              "password",
#     password_confirmation: "password",
#     admin:     true,
#     activated: true,
#     activated_at: Time.zone.now)
  
# 10.times do |n|
#   name  = Faker:name:.name
#   email = "example-#{n+1}@sample.co.jp"
#   password = "password"
#   User.create!(name:  name,
#       email: email,
#       password:              password,
#       password_confirmation: password,
#       activated: true,
#       activated_at: Time.zone.now)
# end
  
# # サンプルメニュー
# 10.times do |n|
#   training  = Faker:name:.training
#   content = "sample training menu#{n+1}"
#   Training.create!(training:  training,
#       content: content,
#       activated_at: Time.zone.now)
# end

# # サンプルコメント
# users = User.order(:created_at).take(6)
# 10.times do
#     comment = Faker::Lorem.sentence(5)
#     users.each { |user| user.microposts.create!(comment: commnet) }
# end

#ユーザ
User.create!(name:  "TestUser",
    email: "example@sample.co.jp",
    password:              "password",
    password_confirmation: "password",
)

#マスタ
Purpose.create!(id:1, name: '筋力トレーニング') 
Purpose.create(id: 2, name: "ダイエット") 
Purpose.create(id: 3, name: "ファンクション") 
Environment.create(id: 1, name: "ジム") 
Environment.create(id: 2, name: "トレーニンググッズ") 
Environment.create(id: 3, name: "ボディウエイト") 
Target.create(id: 1, name: "胸") 
Target.create(id: 2, name: "背中") 
Target.create(id: 3, name: "肩") 
Target.create(id: 4, name: "上腕") 
Target.create(id: 5, name: "前腕") 
Target.create(id: 6, name: "体幹") 
Target.create(id: 7, name: "大腿") 
Target.create(id: 8, name: "下腿") 