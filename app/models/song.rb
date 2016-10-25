class Song < ActiveRecord::Base
  include SoftDelete
  include ActiveUUID::UUID
  natural_key :created_at

  has_and_belongs_to_many :singers


  def entity
    Entity.new(self)
  end

  class Entity < Grape::Entity
    expose :id
    expose :name
  end
end

# == Schema Information
#
# Table name: songs
#
#  id          :binary           not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  is_archived :boolean          default("f")
#
# Indexes
#
#  sqlite_autoindex_songs_1  (id) UNIQUE
#
