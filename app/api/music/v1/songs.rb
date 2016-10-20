module Music
  module V1
    class Songs < Grape::API
      version 'v1', using: :path
      format :json
      formatter :json, Grape::Formatter::ActiveModelSerializers


      resources :songs do
        desc 'Returns list of songs'
        get do
          Song.all
        end

        desc 'Returns a particular song'
        params do
          requires :id, type: String, desc: "Song uuid"
        end
        route_param :id do
          get do
            Song.find( params[:id] )
          end
        end

      end
    end
  end
end
