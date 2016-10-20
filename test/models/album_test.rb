# == Schema Information
#
# Table name: albums
#
#  id         :binary           not null, primary key
#  name       :string
#  year       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  sqlite_autoindex_albums_1  (id) UNIQUE
#

require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
