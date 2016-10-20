class Song < Grape::Entity
  def entity
    Entity.new(self)
  end

  class Entity < Grape::Entity
    expose :name
  end
end
