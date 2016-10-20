class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs, id: false do |t|
      t.uuid :id, primary_key: true, null: false
      t.string :name

      t.timestamps null: false
    end
  end
end
