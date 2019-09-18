class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :preview_url
      t.string :track_id
      t.string :artists
      t.string :duration
      t.string :message

      t.timestamps
    end
  end
end
