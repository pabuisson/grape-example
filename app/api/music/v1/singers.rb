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

        desc 'Create a new singer'
        params do
          requires :singer, type: Hash do
            requires :name, type: String, desc: "Singer title"
          end
        end
        post do
          singer = Singer.create!( params[:singer] )
          present singer
        end

        desc 'Update an existing singer'
        params do
          requires :id, type: String, desc: "Singer uuid"
          requires :singer, type: Hash, desc: "The updated parts of the singer"
        end
        patch ':id' do
          singer = Singer.find( params[:id ])
          singer.update( params[:singer] )
          present singer
        end

        desc 'Delete an existing singer'
        params do
          requires :id, type: String, desc: "Singer uuid"
        end
        delete ':id' do
          singer = Singer.find( params[:id] )
          singer.update( is_archived: true )
          body false
        end
      end
    end
  end
end

