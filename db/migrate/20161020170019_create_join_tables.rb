class CreateJoinTables < ActiveRecord::Migration
  def change
    create_table :singers_songs, id: false do |t|
      t.uuid :singer_id, null: false
      t.uuid :song_id,   null: false
    end

    create_table :albums_singers, id: false do |t|
      t.uuid :singer_id, null: false
      t.uuid :album_id,  null: false
    end

    create_table :albums_songs, id: false do |t|
      t.uuid :album_id, null: false
      t.uuid :song_id,  null: false
    end
  end
end
