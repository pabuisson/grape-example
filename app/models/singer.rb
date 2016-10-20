class Singer < ActiveRecord::Base
  include ActiveUUID::UUID
  natural_key :created_at

  has_and_belongs_to_many :songs
  has_many :nicknames
end

# == Schema Information
#
# Table name: singers
#
#  id         :binary           not null, primary key
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  sqlite_autoindex_singers_1  (id) UNIQUE
#