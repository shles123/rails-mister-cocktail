class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
  end

  def create
  end

  private

  def cocktails
end
