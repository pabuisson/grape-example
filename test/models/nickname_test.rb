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

require 'test_helper'

class NicknameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
