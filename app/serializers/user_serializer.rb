class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_pic, :top_list

  has_many :comments

  def top_list
    self.object.top_lists
  end
  
end
