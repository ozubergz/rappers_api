class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :updated_at, :user, :artist

  def user
    {
      id: self.object.user.id,
      username: self.object.user.username,
      top_list: self.object.user.top_lists
    }
  end
end
