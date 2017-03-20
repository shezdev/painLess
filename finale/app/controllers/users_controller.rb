class UsersController < ApplicationController
  before_action :authenticate_user!

    def new
      @foodlog = current_user.foodlogs.build
      @foodlogs = current_user.foodlogs.all
      @painscore = current_user.painscores.build
      @painscores = current_user.painscores.all
    end

    def create
      @foodlog = current_user.foodlogs.build(foodlog_params)
      if @foodlog.save
        redirect_to users_path
      else
        redirect_to users_path
      end

      @painscore = current_user.painscores.build(painscore_params)
      if @painscore.save
        redirect_to users_path
      else
        redirect_to users_path
      end
    end

    def foodlog_params
      params.require(:foodlog).permit(:food, :customdate)
      params.require(:painscore).permit(:score, :customdate)
    end

    def destroy
      @foodlog = Foodlog.find(params[:id])
      @foodlog.delete
      redirect_to users_path

      @painscore = Painscore.find(params[:id])
      @painscore.delete
      redirect_to users_path
    end

    def index
      # @foodlogs = current_user.foodlogs.all
      @foodlogs = current_user.foodlogs.where(customdate: params[:customdate])
      # @painscores = current_user.painscores.all
      @painscores = current_user.painscores.where(customdate: params[:customdate])
    end
end
