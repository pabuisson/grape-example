class Nickname < ActiveRecord::Base
  include SoftDelete
  include ActiveUUID::UUID
  natural_key :created_at

  belongs_to :singer


  def entity
    Entity.new( self )
  end

  class Entity < Grape::Entity
    expose :id
    expose :nickname
  end
end

# == Schema Information
#
# Table name: nicknames
#
#  id          :binary           not null, primary key
#  nickname    :string
#  singer_id   :binary
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  is_archived :boolean          default("f")
#
# Indexes
#
#  sqlite_autoindex_nicknames_1  (id) UNIQUE
#
