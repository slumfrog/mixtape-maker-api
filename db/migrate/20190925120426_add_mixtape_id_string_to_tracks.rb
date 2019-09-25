class AddMixtapeIdStringToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :mixtape_id, :string
  end
end
