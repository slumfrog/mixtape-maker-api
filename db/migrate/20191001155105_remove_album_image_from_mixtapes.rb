class RemoveAlbumImageFromMixtapes < ActiveRecord::Migration[5.2]
  def change
    remove_column :mixtapes, :album_image, :string
  end
end
