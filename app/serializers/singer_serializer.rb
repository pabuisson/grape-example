class SingerSerializer < ActiveModel::Serializer
  attribute :id_s, key: :id
  attributes :first_name, :last_name

  def id_s
    object.id.to_s
  end
end
