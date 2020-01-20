class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile_pic

  has_many :comments
end
