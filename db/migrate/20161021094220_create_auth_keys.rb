class CreateAuthKeys < ActiveRecord::Migration
  def change
    create_table :auth_keys, id: false do |t|
      t.string :key

      t.timestamps null: false
    end
  end
end
