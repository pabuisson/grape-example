module Music
  module V1
    class Albums < Grape::API
      version 'v1', using: :path
      format :json
      formatter :json, Grape::Formatter::ActiveModelSerializers


      resources :albums do
        desc 'Returns list of albums'
        get do
          Album.all
        end

        desc 'Returns a particular album'
        params do
          requires :id, type: String, desc: "Album uuid"
        end
        route_param :id do
          get do
            Album.find( params[:id] )
          end
        end

      end
    end
  end
end

