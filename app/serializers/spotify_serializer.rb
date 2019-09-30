class SpotifySerializer < ActiveModel::Serializer
    attributes :name, :tracks, :preview_url
  end
  