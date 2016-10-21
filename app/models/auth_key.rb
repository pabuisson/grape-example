class AuthKey < ActiveRecord::Base
  def self.generate
    begin
      new_key = SecureRandom.hex(6)
    end while self.exists?( key: new_key )

    self.new( key: new_key )
  end
end

# == Schema Information
#
# Table name: auth_keys
#
#  key        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
