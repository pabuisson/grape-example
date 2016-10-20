class Album < ActiveRecord::Base
  include SoftDelete
  include ActiveUUID::UUID
  natural_key :created_at

  has_and_belongs_to_many :singers
  has_and_belongs_to_many :songs
end

# == Schema Information
#
# Table name: albums
#
#  id          :binary           not null, primary key
#  name        :string
#  year        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  is_archived :boolean          default("f")
#
# Indexes
#
#  sqlite_autoindex_albums_1  (id) UNIQUE
#
