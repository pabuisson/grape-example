class CreateSingers < ActiveRecord::Migration
  def change
    create_table :singers, id: false do |t|
      t.uuid :id, primary_key: true, null: false
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
