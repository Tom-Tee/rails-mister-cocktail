class CocktailsController < ApplicationController
  before_action :show_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
    @review = Review.new
    # @ingredients = @cocktail.ingredient
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(select_task)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @cocktail.update(select_task)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def show_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def select_task
    params.require(:cocktail).permit(:name)
  end
end
