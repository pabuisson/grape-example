module Music
  module V1
    class Albums < Grape::API
      version 'v1', using: :path
      format :json

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

        desc 'Create a new album'
        params do
          requires :album, type: Hash do
            requires :name, type: String, desc: "Album title"
            optional :year, type: String, desc: "Year when album was first released"
          end
        end
        post do
          album = Album.create!( params[:album] )
          present album
        end

        desc 'Update an existing album'
        params do
          requires :id, type: String, desc: "Album uuid"
          requires :album, type: Hash, desc: "The updated parts of the album"
        end
        patch ':id' do
          album = Album.find( params[:id ])
          album.update( params[:album] )
          present album
        end

        desc 'Delete an existing album'
        params do
          requires :id, type: String, desc: "Album uuid"
        end
        delete ':id' do
          album = Album.find( params[:id] )
          album.update( is_archived: true )
          body false
        end
      end
    end
  end
end

