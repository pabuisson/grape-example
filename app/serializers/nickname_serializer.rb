class NicknameSerializer < ActiveModel::Serializer
  attribute :id_s, key: :id
  attributes :nickname

  def id_s
    object.id.to_s
  end
end
