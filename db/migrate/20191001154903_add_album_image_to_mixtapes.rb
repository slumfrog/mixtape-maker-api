class AddAlbumImageToMixtapes < ActiveRecord::Migration[5.2]
  def change
    add_column :mixtapes, :album_image, :string
  end
end
