class PhotoSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :title, :photo_url_string
end
