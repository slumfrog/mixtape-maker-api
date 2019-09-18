class ChangePlaylistTracksstomixtapeTracks < ActiveRecord::Migration[5.2]
  def change
    rename_table :playlist_tracks, :mixtape_tracks
  end
end
