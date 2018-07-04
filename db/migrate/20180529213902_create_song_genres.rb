class CreateSongGenres < ActiveRecord::Migration
  def change
    create_table :song_genres do |sg|
      sg.belongs_to :song 
      sg.belongs_to :genre
      sg.timestamps null: false
    end
  end
end
