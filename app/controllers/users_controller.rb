class UsersController < ApplicationController

    def create
        user = User.create (user_params)
        if user.valid?
            render json: {user: UserSerializer.new(user), token: encode_token({user_id: user.id}) } , status: :created
        else
            render json: {errors: user.errors.full_messages }, status: :not_accepted
        end
    end

    def show
        user = User.find(params[:id])
        render({json: {user: UserSerializer.new(user) }})
    end

    def playlists
        playlists = RSpotify::User.find(@current_user.spotify_id).playlists
        playlist_name = playlists.map{|playlist| {name: playlist.name, id: playlist.id, tracks: playlist.tracks} }
        render json: playlist_name
    end


    def songs

    end


    private
     
    def user_params
        params.require(:user).permit(:email, :password, :spotify_id)
    end


end