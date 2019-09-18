class Mixtape < ApplicationRecord
    has_many :tracks through :mixtape_tracks
end
