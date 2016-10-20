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

require 'test_helper'

class SingerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
