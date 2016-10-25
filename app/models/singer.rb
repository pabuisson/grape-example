class Singer < ActiveRecord::Base
  include SoftDelete
  include ActiveUUID::UUID
  natural_key :created_at

  has_and_belongs_to_many :songs
  has_many :nicknames



  def entity
    Entity.new( self )
  end

  class Entity < Grape::Entity
    expose :id, proc: Proc.new { |singer, options| UUIDTools::UUID.serialize( singer.id ) }
    expose :first_name
    expose :last_name
    # NOTE: Does not work if I remove the "using" part?
    expose :nicknames, using: Nickname::Entity
  end
end

# == Schema Information
#
# Table name: singers
#
#  id          :binary           not null, primary key
#  first_name  :string
#  last_name   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  is_archived :boolean          default("f")
#
# Indexes
#
#  sqlite_autoindex_singers_1  (id) UNIQUE
#
