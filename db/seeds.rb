# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Player.destroy_all
Coach.destroy_all
Team.destroy_all

3.times do
  team = Team.create(name: Faker::Sports::Football.unique.team, win: Faker::Number.between(0, 10), loss: Faker::Number.between(0, 10))

  number_of_players = rand(5..10)
  number_of_coaches = rand(1..3)

  number_of_players.times do
    team.players.create(name: Faker::Sports::Football.unique.player)
  end

  number_of_coaches.times do
    team.coaches.create(name: Faker::Sports::Football.unique.coach)
  end
end

# FOR VERIFICATION IN CONSOLE
puts "Number of teams: #{Team.count}"
puts "Number of players: #{Player.count}"
puts "Number of coaches: #{Coach.count}"
