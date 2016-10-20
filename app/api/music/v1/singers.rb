module Music
  module V1
    class Singers < Grape::API
      version 'v1', using: :path
      format :json
      formatter :json, Grape::Formatter::ActiveModelSerializers


      resources :singers do
        desc 'Returns list of singers'
        get do
          Singer.all
        end

        desc 'Returns a particular singer'
        params do
          requires :id, type: String, desc: "Singer uuid"
        end
        route_param :id do
          get do
            Singer.find( params[:id] )
          end
        end

      end
    end
  end
end

