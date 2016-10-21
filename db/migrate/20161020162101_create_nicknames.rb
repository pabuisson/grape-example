class CreateNicknames < ActiveRecord::Migration
  def change
    create_table :nicknames, id: false do |t|
      t.uuid :id, primary_key: true, null: false
      t.string :nickname
      t.uuid :singer_id

      t.timestamps null: false
    end
  end
end
