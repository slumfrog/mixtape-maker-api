class MixtapeSerializer < ActiveModel::Serializer
  attributes :id, :name, :personal_message, :user_id, :mixtape_id
  has_many :tracks
  belongs_to :user
end
