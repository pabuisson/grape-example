
module SoftDelete
  extend ActiveSupport::Concern

  included do
    scope :current, -> { where( is_archived: true ) }
  end

  def archive!
    is_archived = true
    save!
  end
end

