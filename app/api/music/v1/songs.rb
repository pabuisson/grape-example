module Music
  module V1
    class Songs < Grape::API
      version 'v1', using: :path
      format :json
      formatter :json, Grape::Formatter::ActiveModelSerializers

      resources :songs do
        desc 'Returns list of songs'
        get do
          present Song.all
        end

        desc 'Returns a particular song'
        params do
          requires :id, type: String, desc: "Song uuid"
        end
        route_param :id do
          get do
            present Song.find( params[:id] )
          end
        end

        desc 'Create a new song'
        params do
          requires :song, type: Hash do
            requires :name, type: String, desc: "Song title"
          end
        end
        post do
          song = Song.create!( params[:song] )
          present song
        end

        desc 'Update an existing song'
        params do
          requires :id, type: String, desc: "Song uuid"
          requires :song, type: Hash, desc: "The updated parts of the song"
        end
        patch ':id' do
          song = Song.find( params[:id ])
          song.update( params[:song] )
          present song
        end

        desc 'Delete an existing song'
        params do
          requires :id, type: String, desc: "Song uuid"
        end
        delete ':id' do
          song = Song.find( params[:id] )
          song.update( is_archived: true )
          body false
        end
      end
    end
  end
end
