class Api::V1::AuthController < ApplicationController
  # skip_before_action :authorized, only: [:create, :login]

  def create 
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      render json: { user: UserSerializer.new(@user) }
    else 
      render json: { error: "Invalid Credentials, try again.."}
    end
  end

  def profile
    if logged_in?
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    else
      render json: { error: "Please Login" }
    end
  end

  def destory
    session.clear
    render json: { alert: "Successfully logged out!" }
  end

  # def create
  #   @user = User.find_by(email: user_login_params[:email])
  #   if @user && @user.authenticate(user_login_params[:password])
  #     token = encode_token({user_id: @user.id})
  #     render json: {user: UserSerializer.new(@user), jwt: token}, status: :accepted
  #   else
  #     render json: {message: 'Invalid Credentials'}, status: :unauthorized
  #   end
  # end

  private
  def user_login_params
    params.require(:user).permit(:email, :password)
  end
end
