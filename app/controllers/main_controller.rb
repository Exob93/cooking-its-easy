class MainController < ApplicationController
  protect_from_forgery except: :index
  def index
    @recent_recipes = Recipe.all.order(id: :desc).limit(6)
  end
  def szukaj
    @szukaj = Recipe.where("Title like ?" ,"%#{params[:s]}%")
  end

end
