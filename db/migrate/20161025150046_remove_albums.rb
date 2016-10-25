class RemoveAlbums < ActiveRecord::Migration
  def change
    remove_table :albums
    remove_table :albums_singers
    remove_table :albums_songs
  end
end
