class SpotifyController < ApplicationController

    def playlists
        playlists = RSpotify::User.find(@current_user.spotify_id).playlists
        playlist_name = playlists.map{|playlist| {name: playlist.name, id: playlist.id, tracks: playlist.tracks, images: playlist.images } }
        render json: playlist_name
    end

    def playlist
        # playlist = RSpotify::Playlist.find_by_id('3Nto9k2mww37XoOdgC8cca')
        playlist = RSpotify::Playlist.find_by_id(params[:id])
        tracks = playlist.tracks.map{|track| { name: track.name, preview: track.preview_url, track_id: track.id, duration: track.duration_ms, artist: track.album.artists[0].name, album_image: track.album.images[0]["url"], popularity: track.popularity}}
        render json: tracks
    end

    private
     
    def spotify_params
        params.permit!
    end

end

