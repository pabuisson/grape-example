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

require 'test_helper'

class SongTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
