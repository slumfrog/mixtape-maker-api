class AddMixtapeIdToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :mixtape_id, :integer
  end
end
