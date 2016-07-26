class User < ApplicationRecord
  EMAIL_REGEX =
    /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  # relationship

  # validation
  # validates for presence
  validates :username, :first_name, :last_name, :email, :password, :confirm_password, presence: true
  # validates for format
  validates :email, format: { with: EMAIL_REGEX },
            length: { maximum: 30 },
            uniqueness: { case_sensitive: true }
end
