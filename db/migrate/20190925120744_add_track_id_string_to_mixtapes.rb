class AddTrackIdStringToMixtapes < ActiveRecord::Migration[5.2]
  def change
    add_column :mixtapes, :track_id, :string
  end
end
