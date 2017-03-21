class PainscoresController < ApplicationController
  before_action :authenticate_user!

  def new
    @painscore = current_user.painscores.build
    @painscores = current_user.painscores.where(customdate: params[:customdate])
  end

  def create
    @painscore = current_user.painscores.build(painscore_params)
    if @painscore.save
      redirect_to new_painscore_path(customdate: @painscore.customdate)
    else
      redirect_to new_painscore_path(customdate: @painscore.customdate)
    end
  end

  def painscore_params
    params.require(:painscore).permit(:score, :customdate, :notes)
  end

  def destroy
    @painscore = Painscore.find(params[:id])
    @painscore.delete
    redirect_to new_painscore_path(customdate: @painscore.customdate)
  end

  def index
    @painscores = current_user.painscores.where(customdate: params[:customdate])
  end

end
