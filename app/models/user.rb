class User < ApplicationRecord

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    VALID_PASSWORD_REGEX = /\A[a-zA-Z\d]+\z/

    # ユーザ名 必須 一意 136文字以内
    validates :name, presence: true, uniqueness: true ,length: { maximum: 136 }
    # メールアドレス 必須 一意 専用フォーマット
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    # パスワード 必須 8-16文字 半角英数字フォーマット
    validates :password ,length: { in: 6..20 } ,format: { with: VALID_PASSWORD_REGEX }
    has_secure_password

    attr_accessor :password_before
end
