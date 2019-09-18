class ChangeMixtapeTracksColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :mixtape_tracks, :playlist_id, :mixtape_id
  end

end
