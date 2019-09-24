class Mixtape < ApplicationRecord
    belongs_to :user
    has_many :tracks
    # accepts_nested_attributes_for :mixtape

end
