class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums, id: false do |t|
      t.uuid :id, primary_key: true, null: false
      t.string :name
      t.string :year

      t.timestamps null: false
    end
  end
end
