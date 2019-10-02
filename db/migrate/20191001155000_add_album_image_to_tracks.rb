class AddAlbumImageToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :album_image, :string
  end
end
