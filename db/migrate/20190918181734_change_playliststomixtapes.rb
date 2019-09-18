class ChangePlayliststomixtapes < ActiveRecord::Migration[5.2]
  def change
    rename_table :playlists, :mixtapes
  end
end
