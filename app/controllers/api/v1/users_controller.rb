
  class Api::V1::UsersController < ApplicationController
    #authorize user AFTER they're created!!
    skip_before_action :authorized, only: [:create]
    before_action :set_user, only: [:show, :update, :destroy]

    # GET /users
    def index
      render json: User.all
    end

    # GET /users/1
    def show
      render json: @user
    end

    # POST /users
    def create
      @user = User.create(user_params)

      if @user.valid?
        @token = encode_token(user_id: @user.id) #user_id is the payload.. see ApplicationController
        render json: {user: UserSerializer.new(@user), jwt: @token}, status: :created #, location: v1_user_url@(user)
      else
        render json: @user.errors, status: :unprocessable_entity #{ error: 'failed to create user'}, status: :not_acceptable
      end
    end

    # PATCH/PUT /users/1
    def update
      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end

    # DELETE /users/1
    def destroy
      @user.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def user_params
        params.require(:user).permit(:name, :username, :email, :password)
      end

  end
