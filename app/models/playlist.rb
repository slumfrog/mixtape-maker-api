class Playlist < ApplicationRecord
    has_many :tracks through :playlist_tracks
end
