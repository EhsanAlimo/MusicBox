class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.text :name
      t.text :genre
      t.text :artist
      
      t.timestamps
    end
  end
end
