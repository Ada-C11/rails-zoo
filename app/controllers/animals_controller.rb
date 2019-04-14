class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    animal_id = params[:id].to_i
    @animal = Animal.find_by(id: animal_id)
  end
end
