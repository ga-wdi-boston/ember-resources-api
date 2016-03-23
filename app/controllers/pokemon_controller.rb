class PokemonController < ApplicationController
  def index
    render json: Pokemon.all
  end
  def show
    render json: Pokemon.find(params[:id])
  end
  def create
    @pokemon = Pokemon.create!(pokemon_params)
    if @pokemon.save
      render json: @pokemon, status: :created
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end
  def update
    @pokemon = Pokemon.find(params[:id])
    if @pokemon.update(pokemon_params)
      render json: @pokemon
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end
  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy
    head :no_content
  end

  private
  def pokemon_params
    params.require(:pokemon).permit(
      :national_poke_num, :name,
      :type_one, :type_two,
      :generation,
      :total_points, :base_hp,
      :base_attack, :base_defense,
      :base_sp_attack, :base_sp_defense, :base_speed)
  end

end
