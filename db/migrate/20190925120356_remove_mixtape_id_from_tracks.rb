class RemoveMixtapeIdFromTracks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tracks, :mixtape_id, :string
  end
end
