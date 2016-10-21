class AlbumSerializer < ActiveModel::Serializer
  attribute :id_s, key: :id
  attributes :name, :year

  def id_s
    object.id.to_s
  end
end
