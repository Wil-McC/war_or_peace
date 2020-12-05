require_relative 'card'


game_deck = []

suits = [:diamond, :heart, :spade, :club]
ranks = [1,2,3,4,5,6,7,8,9,10,11,12,13]
face_values = ['Jack', 'Queen', 'King']

def normalize_value(rank)
  if rank == 1
    'Ace'
  elsif rank < 11
    rank.to_s
  else
    require "pry"; binding.pry
    face_values[rank - 11]
  end
end

suits.each do |suit|
  ranks.each do |rank|
    card = Card.new(suit, normalize_value(rank), rank)
    game_deck << card
  end
end
