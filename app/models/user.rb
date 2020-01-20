class User < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :artists, through: :comments

    has_many :top_lists, dependent: :destroy
    has_many :artists, through: :top_lists
end
