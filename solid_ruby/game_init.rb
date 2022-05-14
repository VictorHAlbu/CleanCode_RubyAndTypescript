require './game'
require './default_behavior'
require './rules/game_rule'
require './rules/buzz_rule'
require './rules/fizz_rule'
require './rules/bang_rule'

game_number = ARGV[0].to_i

rules = [
  GameRule.create_rule("Fizz"),
  GameRule.create_rule("Buzz"),
  GameRule.create_rule("Bang")
]

game = Game.new(game_number, rules, DefaultBehavior.new)

puts game.play


