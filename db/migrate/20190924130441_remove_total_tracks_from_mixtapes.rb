class RemoveTotalTracksFromMixtapes < ActiveRecord::Migration[5.2]
  def change
    remove_column :mixtapes, :total_tracks, :string
  end
end
