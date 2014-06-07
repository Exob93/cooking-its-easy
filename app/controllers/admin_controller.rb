class AdminController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "zaq12wsx"
  def index
    @recipes = Recipe.all
  end

end
