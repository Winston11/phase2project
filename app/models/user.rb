class User < ApplicationRecord
    has_many :streaming_services, through: :user_services
    has_many :user_services, through: :streaming_service
    # has_secure_password
    has_many :user_services

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true, uniqueness: true
end
