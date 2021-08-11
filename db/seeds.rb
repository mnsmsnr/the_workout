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
    password: "password2021",
)

#トレーニング
Workout.create!(id: "1",
    user_id: "0",
    menu: "ベンチプレス",
    content: "",
    purpose: "1",
    environment: "1",
    target: "1",
    video_id: "hB-kaLANF2A",
)
work = Workout.find(1)
work.image.attach(io: File.open('app/assets/images/bench-press.jpg'), filename: 'bench-press.jpg')

Workout.create!(id: "2",
    user_id: "0",
    menu: "プッシュアップ",
    content: "",
    purpose: "1",
    environment: "3",
    target: "1",
    video_id: "VzUaVBXGVeQ",
)
work = Workout.find(2)
work.image.attach(io: File.open('app/assets/images/push-up.jpg'), filename: 'push-up.jpg')

Workout.create!(id: "3",
    user_id: "0",
    menu: "チンニング",
    content: "",
    purpose: "1",
    environment: "3",
    target: "2",
    video_id: "hj2j-RsUiSE",
)
work = Workout.find(3)
work.image.attach(io: File.open('app/assets/images/thining.jpg'), filename: 'thining.jpg')

Workout.create!(id: "4",
    user_id: "0",
    menu: "デッドリフト",
    content: "",
    purpose: "1",
    environment: "1",
    target: "2",
    video_id: "YXvcaAAToKo",
)
work = Workout.find(4)
work.image.attach(io: File.open('app/assets/images/dead-lift.jpg'), filename: 'dead-lift.jpg')


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