module Music
  class Base < Grape::API
    mount Music::V1::Songs
    mount Music::V1::Singers
    mount Music::V1::Albums
  end
end
