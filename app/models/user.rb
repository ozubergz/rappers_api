class User < ApplicationRecord
  belongs_to :comment
  belongs_to :favorite
end
