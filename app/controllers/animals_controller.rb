class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    animal_id = params[:id].to_i
    @animal = Animal.find_by(id: animal_id)
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)

    @animal.save

    redirect_to animals_path
  end

  private

  def animal_params
    return params.require(:animal).permit(:name, :species, :age)
  end
end
