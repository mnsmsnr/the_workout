class Workout < ApplicationRecord
    has_one_attached :image

    # トレーニング名 必須 一意 30文字以内
    validates :menu, presence: true, uniqueness: true ,length: { maximum: 30 }

    # イメージファイル jpg/png 400*400サイズに変換
    validate :file_type

        private
        def file_type
            if image.attached?
                #拡張子エラー
                if !image.blob.content_type.in?(%('image/jpeg image/png'))
                    image.purge
                    errors.add(PICTURE, IMAGE_FORMAT )
                else
                #強制リサイズ
                    image.variant(resize_to_fill: [400, 400])
                end
            end
        end
end
