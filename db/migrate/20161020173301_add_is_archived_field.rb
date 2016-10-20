class AddIsArchivedField < ActiveRecord::Migration
  def change
    add_column :singers, :is_archived, :boolean, default: false
    add_column :songs, :is_archived, :boolean, default: false
    add_column :albums, :is_archived, :boolean, default: false
    add_column :nicknames, :is_archived, :boolean, default: false
  end
end
