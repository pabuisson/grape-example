class SongSerializer < ActiveModel::Serializer
  attribute :id_s, key: :id
  attribute :name

  def id_s
    object.id.to_s
  end
end
