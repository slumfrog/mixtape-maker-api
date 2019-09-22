class TrackSerializer < ActiveModel::Serializer
    attributes :name, :tracks, :preview_url
  end
  