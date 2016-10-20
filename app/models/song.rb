class Song < ActiveRecord::Base
  include ActiveUUID::UUID
  natural_key :created_at

  has_and_belongs_to_many :singers
  has_and_belongs_to_many :albums
end

# == Schema Information
#
# Table name: songs
#
#  id         :binary           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  sqlite_autoindex_songs_1  (id) UNIQUE
#
