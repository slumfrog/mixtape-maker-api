class MixtapeSerializer < ActiveModel::Serializer
  attributes :id, :name, :personal_message, :user_id, :mixtape_id, :tape_colour
  has_many :tracks
  belongs_to :user
end
