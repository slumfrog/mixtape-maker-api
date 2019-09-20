class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :spotify_id
end
