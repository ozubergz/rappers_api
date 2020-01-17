class User < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :artists, through: :comments
end
