
module SoftDelete
  extend ActiveSupport::Concern

  included do
    scope :current, -> { where( is_archived: false ) }
  end

  def archive!
    is_archived = true
    save!
  end
end

