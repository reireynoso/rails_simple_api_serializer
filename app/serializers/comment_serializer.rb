class CommentSerializer < ActiveModel::Serializer
  attributes :content, :owner
end
