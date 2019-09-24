class MixtapesController < ApplicationController

    def create
        mixtape = Mixtape.create(name: mixtape_params[:name], personal_message: mixtape_params[:personal_message], user_id: mixtape_params[:user_id])

        track = mixtape_params[:tracks].map{|track| track = Track.create(name: track[:name], artist: track[:artist], comment: track[:comment], duration: track[:duration], preview: track[:preview], track_id: track[:track_id])}
        render json: track
    end

    private

    def mixtape_params
        params.require(:mixtape).permit(:name, :personal_message, :user_id, {:tracks => [:name, :artist, :comment, :duration, :preview, :track_id]})
    end
    
end