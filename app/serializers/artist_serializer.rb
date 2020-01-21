class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile_pic, :bio

  has_many :comments
end
