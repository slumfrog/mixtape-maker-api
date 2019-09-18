class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :total_tracks
      t.string :description
      t.string :personal_message

      t.timestamps
    end
  end
end
