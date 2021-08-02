class Workout < ApplicationRecord
    VALID_VIDEO_ID_REGEX = 

    # トレーニング名 必須 一意 30文字以内
    validates :menu, presence: true, uniqueness: true ,length: { maximum: 30 }
    has_one_attached :image
end
