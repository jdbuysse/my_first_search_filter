class DogsController < ApplicationController

  def index
    if params["name"]
      @dogs = Dog.where(name: params["name"].downcase.capitalize)
      render json: @dogs
    else
      @dogs = Dog.all
      render json: @dogs
    end
  end

end
