class AuthController < ApplicationController

    def create
        user = User.find_by(email: user_login_params[:email])
        if user && user.authenticate(user_login_params[:password])
            render json: { user: UserSerializer.new(user), token: encode_token(user_id: user.id) }, status: :accepted
        else
            render json: { message: 'Invalid email or password' }, status: :unauthorized
        end
    end

    def validate_token
        user = User.find(decode_token(get_token))
        # profile_pic = RSpotify::User.find(user.spotify_id).images[0]["url"] || "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"
        if user
            render json: { user: UserSerializer.new(user), token: encode_token(user_id: user.id) }, status: :accepted
        else
            render json: { message: 'User not found' }, status: :unauthorized
        end
    end

    private

    def user_login_params
        params.require(:user).permit(:email, :password, :spotify_id)
    end

end

# profile_pic: profile_pic, 