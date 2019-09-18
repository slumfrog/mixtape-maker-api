class Track < ApplicationRecord
    has_many :playlists through :playlist_tracks
end
