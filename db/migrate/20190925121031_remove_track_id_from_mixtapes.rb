class RemoveTrackIdFromMixtapes < ActiveRecord::Migration[5.2]
  def change
    remove_column :mixtapes, :track_id, :string
  end
end
