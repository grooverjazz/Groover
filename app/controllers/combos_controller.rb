class CombosController < ApplicationController
  load_and_authorize_resource

  def index
    @combo = Combo.all
  end

  def show; end

  def new
    @combo = Combo.new
  end

  def create
    @combo = Combo.new(combo_params)

    if @combo.save
      flash[:success] = 'De combo is aangemaakt.'
      redirect_to combos_path
    else
      flash[:danger] = 'Er is iets fout gegaan. Probeer het opnieuw.'
      render 'new'
    end
  end

  def edit; end

  def update
    @combo = Combo.find(params[:id])

    if @combo.update_attributes(combo_params)
      flash[:success] = 'De combo is aangepast.'
      redirect_to combo_path(@combo)
    else
      flash[:danger] = 'Er is iets fout gegaan. Probeer het opnieuw.'
      render 'edit'
    end
  end

  protected

  def combo_params
    params.require(:combo).permit(:name, :description, :cover, :music_uid, :facebook_uid, :twitter_uid, :short_text)
  end
end
