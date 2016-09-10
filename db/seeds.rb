# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require_relative "../lib/tasks/seed_from_file.rb"


include AdjectiveSeed

# Seed db with adjectives from file
def seed_with_adjectives
  words = AdjectiveSeed::get_adjective_list

  words.each do |word|
    Adjective.create(word: word)
  end
end


seed_with_adjectives # Uncomment this file to stop seeding with adjectives
