class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

#private

  #def cocktail_params
    #params.require(:cocktail).permit(:name, :doses, :ingredient)
  #end

end
