class Nickname < ActiveRecord::Base
  include ActiveUUID::UUID
  natural_key :created_at

  belongs_to :singer
end

# == Schema Information
#
# Table name: nicknames
#
#  id         :binary           not null, primary key
#  nickname   :string
#  author_id  :binary
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  sqlite_autoindex_nicknames_1  (id) UNIQUE
#
