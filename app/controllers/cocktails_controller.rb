class CocktailsController < ApplicationController
  before_action :load_cocktail, only: [:show, :destroy, :upload_pic]

  def index
    @cocktails = Cocktail.all
  end

  def show

  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  def upload_pic
    @cocktail.update(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  private

  def load_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :strength, :tagline, :photo)
  end

end
