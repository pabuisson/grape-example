module Music
  class Base < Grape::API
    before do
      error!( 'Unauthorized. Invalid or expired token.', 401 ) unless authenticated?
    end

    helpers do
      def authenticated?
        puts "API Key: #{ headers['X-Api-Key'] }"
        api_key = headers[ 'X-Api-Key' ]
        api_key && AuthKey.find_by( key: api_key ).present?
      end
    end

    mount Music::V1::Songs
    mount Music::V1::Singers
    mount Music::V1::Albums
  end
end
