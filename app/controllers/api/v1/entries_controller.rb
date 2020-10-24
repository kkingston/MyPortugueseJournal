class Api::V1::EntriesController < ApplicationController
    before_action :set_entry, only: [:show, :update, :destroy]
    skip_before_action :authorized, only: [:create, :index
]

    # GET /entries
    def index
      @entries = Entry.all
      render json: @entries, :include => [:word, :user]
      
    end

    # GET /entries/1
    def show
      render json: @entry
    end

    # POST /entries
    def create
      @entry = Entry.new(entry_params)
      @entry.user = current_user
      # user_id = decode_token[0]['user_id'] #JWTdecode => [{'user_id' => 1}, {'alg'=> 'HS256'}]
      # @entry.user = User.find_by(id: user_id)
      if @entry.save
        render json: @entry, :include => [:word]
      else
        render json: @entry.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /entries/1
    def update
      if @entry.update(entry_params)
        render json: @entry
      else
        render json: @entry.errors, status: :unprocessable_entity
      end
    end

    # DELETE /entries/1
    def destroy
      @entry.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_entry
        @entry = Entry.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def entry_params
        params.require(:entry).permit(:content, :word_id, :date)
      end

  end
