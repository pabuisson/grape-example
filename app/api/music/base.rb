module Music
  class Base < Grape::API
    # Accepts XML and JSON content types, and defaults to JSON for anything else
    content_type :xml, 'application/xml'
    content_type :json, 'application/json'
    default_format :json
    default_error_formatter :json

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

    # route :any, '*path' do
    #   error! :not_found, 404
    # end

    add_swagger_documentation(
      base_path: "",
      api_version: "0.1",
      format: :json,
      hide_documentation_path: true,
      info: {
        title: "Music API",
        description: 'API to test Grape and swagger and all those gems on a tiny project',
        contact: "pierreadrien@altagem.com",
      }
    )
  end
end
