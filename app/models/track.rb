class Track < ApplicationRecord
    has_many :mixtapes through :mixtape_tracks
end
