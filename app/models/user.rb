class User < ApplicationRecord
    has_secure_password
    attr_reader :password

    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :password, confirmation: true, length: {minimum:6}
    validates :phone, length: {is: 9}
    validates :date_born, presence: true

end
