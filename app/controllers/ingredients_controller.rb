class IngredientsController < ApplicationController
  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end
end
