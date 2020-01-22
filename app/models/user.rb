class User < ApplicationRecord
    # adds methods to set and authenticate against a BCrypt password
    has_secure_password

    validates :username, presence: true
    validates :username, uniqueness: { case_sensitive: false }

    has_many :comments, dependent: :destroy
    has_many :artists, through: :comments

    has_many :top_lists, dependent: :destroy
    has_many :artists, through: :top_lists
end
