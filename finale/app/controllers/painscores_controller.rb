class PainscoresController < ApplicationController
  def new
    @painscore = Painscore.new
  end

  def create
    @painscore = Painscore.create(painscore_params)
    redirect_to painscores_path
  end

  def painscore_params
    params.require(:painscore).permit(:score, :customdate)
  end

  def index
    @painscores = Painscore.all
  end
end
