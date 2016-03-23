require 'csv'
namespace :db do
  # desc 'Load example data from db/examples.rb'
  # task examples: :environment do
  #   require_relative '../../db/examples'
  # end
  namespace :example do
    desc 'Fill the pokemon table with example data'
    task pokemon: :environment do
      Pokemon.transaction do
        CSV.foreach(Rails.root + "data/pokemon.csv",
            headers: true) do |pokemon_row|
          pokemon = pokemon_row.to_hash
          next if Pokemon.exists? pokemon
          Pokemon.create!(pokemon)
        end
      end
    end
  end

  unless Rails.env == 'production'
    desc 'Drop and setup the development database with examples'
    task nuke_pave:
      %w(environment db:drop db:create db:migrate db:seed db:examples) do
      puts "Nuke and pave of #{Rails.env} complete."
    end
  end
end
