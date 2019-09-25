class MixtapesController < ApplicationController

    def create
        mixtape = Mixtape.create(name: mixtape_params[:name], personal_message: mixtape_params[:personal_message], user_id: mixtape_params[:user_id], mixtape_id: mixtape_params[:mixtape_id])
        mixtape_params[:tracks].map{|track| track = Track.create(name: track[:name], artists: track[:artist], message: track[:comment], duration: track[:duration], preview_url: track[:preview], track_id: track[:track_id], mixtape_id: mixtape.id)}
        render json: mixtape
    end

    private

    def mixtape_params
        params.require(:mixtape).permit(:name, :personal_message, :user_id, :mixtape_id, {:tracks => [:name, :artist, :comment, :duration, :preview, :track_id, :mixtape_id]})
    end
    
end