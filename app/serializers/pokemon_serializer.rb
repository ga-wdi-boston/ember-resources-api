class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :national_poke_num, :type_one, :type_two,
    :generation, :total_points, :base_hp, :base_attack, :base_defense,
    :base_sp_attack, :base_sp_defense, :base_speed
end
