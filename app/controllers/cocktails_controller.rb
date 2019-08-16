class CocktailsController < ApplicationController
  before_action :load_cocktail, only: [:show, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show

  end

  def new
    @cocktail = Cocktail.new
  end

  def create

  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def load_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

end
