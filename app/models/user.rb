class User < ApplicationRecord
    # adds virtual attributes for authentication
    has_secure_password
    # validates email
    validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
    has_many :rented_bikes, class_name: :Bike, foreign_key: :user_id
end
