class DosesController < ApplicationController
  before_action :load_cocktail, only: [:new, :create]
  def new
    @dose = Dose.new
    @ingredient = Ingredient.new
  end

  def create
    parameters = strong_params
    @ingredient = Ingredient.find_or_create_by(name: parameters[:ingredient][:name])
    @dose = Dose.new(description: parameters[:description], ingredient_id: @ingredient.id)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to(cocktail_path(@cocktail))
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(Cocktail.find(params[:cocktail_id]))
  end

  private

  def load_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def strong_params
    params.require(:dose).permit(:description, :ingredient => :name)
  end
end
