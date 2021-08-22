ApplicationRecord.transaction do

#rootユーザ
User.create!(id: '0',
    name:  'root',
    email: 'root@root.co.jp',
    password: 'root0127',
    admin: true
)
#テストユーザ
User.create!(id: '1',
    name:  'TestUser',
    email: 'example@sample.co.jp',
    password: 'password2021',
)

#トレーニング
menu = ['ベンチプレス', #1-1
    'チンニング',
    'ショルダープレス',
    'アームカール',
    'レッグプレス',
    'ペットボトルアームカール', #1-2
    'ローラーリストボール',
    'チューブレッグプレス',
    'チューブカーフレイズ', 
    'プッシュアップ', #1-3
    'スタンディングカーフレイズ',
    'ジムトレーニング前腕×4',#2-1
    'プッシュアップバー', #2-2
    'チューブトレーニング背筋×10',
    'チューブトレーニング肩×4',
    'バランスボール腹筋×7',
    '自重トレーニング背筋×7', #2-3
    '自重トレーニング肩×5',
    '自重トレーニング上腕×4',
    '自重トレーニング前腕×6',
    '自重トレーニング腹筋×7',
    '自重トレーニング大腿×3'
    ]
unit = ['1', #1-1
    '1',
    '1',
    '1',
    '1',
    '1', #1-2
    '1',
    '1',
    '1',
    '1', #1-3
    '1',
    '2', #2-1
    '2', #2-2
    '2', 
    '2',
    '2',
    '2', #2-3
    '2',
    '2',
    '2',
    '2',
    '2'
    ]
environment = ['1', #1-1
    '1',
    '1',
    '1',
    '1',
    '2', #1-2
    '2',
    '2',
    '2',
    '3', #1-3
    '3',
    '1', #2-1
    '2', #2-2
    '2', 
    '2',
    '2',
    '3', #2-3
    '3',
    '3',
    '3',
    '3',
    '3'
    ]
target = ['1', #1-1
    '2',
    '3',
    '4',
    '7',
    '4', #1-2
    '5',
    '7',
    '8',
    '1', #1-3
    '8',
    '5', #2-1
    '1', #2-2
    '2', 
    '3',
    '6',
    '2', #2-3
    '3',
    '4',
    '5',
    '6',
    '7'
    ]
video_id = ['W36C1YcI1MM', #1-1
    'xo4Lx_UU-Vw',
    'qqyamIY3pD0',
    'RQEZIhmtr40',
    'BzxjkQ7W9wQ',
    's0l0vVXU-HI', #1-2
    'De_4DdjHwf4',
    'Lev45oIQfXE',
    '5IYU2BTw0Es',
    'k4fsFKCp5iU', #1-3
    'xDSrCEvSnyM',
    '7sQ5izf39Gs', #2-1
    'ZI7URsS6VrA', #2-2
    'KV14VKiSwUs', 
    'CdWvRqPjLSU',
    'Lx0hqiuNvpw',
    'Q-LGg-58_ZU', #2-3
    'NQ39eXPbg8c',
    'atVAhqOq8ws',
    'nPtnh9wQ-1A',
    'g46tZN9J_2k',
    'hYxBg7fbZnA'
    ]
tips = ["1-1-1 \r\n 
    ・握りは八の字（サムレスは脱落危険、真っ直ぐは手首痛める） \r\n 
    ・グリップ幅は左右肩峰の1.5倍以内  \r\n 
    ・胸についた際の上腕と体の角度は45~60度 \r\n 
    ・肩甲骨を下方回旋して寄せる（肩を下げる）", #1-1
    "1-1-2",
    "1-1-3",
    "1-1-4",
    "1-1-7",
    "1-2-4", #1-2
    "1-2-5",
    "1-2-7",
    "1-2-8",
    "1-3-1", #1-3
    "1-3-8",
    "2-1-5", #2-1
    "2-2-1", #2-2
    "2-2-2", 
    "2-2-3",
    "2-2-4",
    "2-3-2", #2-3
    "2-3-3",
    "2-3-4",
    "2-3-5",
    "2-3-6",
    "2-3-7"
    ]
image = {'app/assets/images/1-1-1_bench-press.jpg' => '1-1-1_bench-press.jpg', #1-1
    'app/assets/images/1-1-2_thining.jpg' => '1-1-2_thining.jpg',
    'app/assets/images/1-1-3_over-head-press.jpg' => '1-1-3_over-head-press.jpg',
    'app/assets/images/1-1-4_barbell-arm-curl.jpg' => '1-1-4_barbell-arm-curl.jpg',
    'app/assets/images/1-1-7_leg-press.jpg' => '1-1-7_leg-press.jpg',
    'app/assets/images/1-2-4_petbottle-arm-curl.jpg' => '1-2-4_petbottle-arm-curl.jpg', #1-2
    'app/assets/images/1-2-5_roller-list-ball.jpeg' => '1-2-5_roller-list-ball.jpeg',
    'app/assets/images/1-2-7_tube-leg-press.jpeg' => '1-2-7_tube-leg-press.jpeg',
    'app/assets/images/1-2-8_tube-calf-raise.jpg' => '1-2-8_tube-calf-raise.jpg',
    'app/assets/images/1-3-1_push-up.jpg' => '1-3-1_push-up.jpg', #1-3
    'app/assets/images/1-3-8_standing-calf-raise.jpeg' => '1-3-8_standing-calf-raise.jpeg',
    'app/assets/images/2-1-5_gym-low-arm-4E.jpg' => '2-1-5_gym-low-arm-4E.jpg', #2-1
    'app/assets/images/2-2-1_push-up-bar.jpg' => '2-2-1_push-up-bar.jpg', #2-2
    'app/assets/images/2-2-2_item-back-10E.jpg' => '2-2-2_item-back-10E.jpg', 
    'app/assets/images/2-2-3_item-sholder-4E.jpg' => '2-2-3_item-sholder-4E.jpg',
    'app/assets/images/2-2-4_item-abdominal-7E.jpg' => '2-2-4_item-abdominal-7E.jpg',
    'app/assets/images/2-3-2_self-back-7E.jpg' => '2-3-2_self-back-7E.jpg', #2-3
    'app/assets/images/2-3-3_self-sholder-5E.jpg' => '2-3-3_self-sholder-5E.jpg', 
    'app/assets/images/2-3-4_self-up-arm-4E.jpeg' => '2-3-4_self-up-arm-4E.jpeg',
    'app/assets/images/2-3-5_self-low-arm-6E.jpeg' => '2-3-5_self-low-arm-6E.jpeg',
    'app/assets/images/2-3-6_abdminal-7E.jpg' => '2-3-6_abdminal-7E.jpg',
    'app/assets/images/2-3-7_up-leg-7E.jpg' => '2-3-7_up-leg-7E.jpg'
    }
22.times do |n|
    Workout.create!(id: n,
        user_id: '0',
        menu: menu[n],
        unit: unit[n],
        environment: environment[n],
        target: target[n],
        video_id: video_id[n],
        tips: tips[n]
    )
    work = Workout.find(n)
    work.image.attach(io: File.open(image.keys[n].to_s), filename: image.values[n].to_s )
end

#名称マスタ
Unit.create(id: 1, name: UNIT_1 ) 
Unit.create(id: 2, name: UNIT_2 ) 
Environment.create(id: 1, name: ENVIRONMENT_1 ) 
Environment.create(id: 2, name: ENVIRONMENT_2 ) 
Environment.create(id: 3, name: ENVIRONMENT_3 ) 
Target.create(id: 1, name: TARGET_1 ) 
Target.create(id: 2, name: TARGET_2 ) 
Target.create(id: 3, name: TARGET_3 ) 
Target.create(id: 4, name: TARGET_4 ) 
Target.create(id: 5, name: TARGET_5 ) 
Target.create(id: 6, name: TARGET_6 ) 
Target.create(id: 7, name: TARGET_7 ) 
Target.create(id: 8, name: TARGET_8 ) 

end