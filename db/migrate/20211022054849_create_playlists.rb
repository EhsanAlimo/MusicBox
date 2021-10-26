class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.text :name
      t.text :image
      t.integer :song_id
      t.integer :user_id

      t.timestamps
    end
  end
end
