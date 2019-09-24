class MixtapesController < ApplicationController

    # def index
    #     @mixtapes = MixtapeTrack.all
    #     render( {json: @mixtapes, status: :ok} )
    # end

    def create
        mixtape = Mixtape.create(mixtape_params)
        render json: mixtape
    end

    private

    def mixtape_params
        params.require(:mixtape).permit(:name, :personal_message)
    end
    

end