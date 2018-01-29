require_relative 'deck'
require_relative 'card'
require_relative 'guess'
require_relative 'round'

card_1 = Card.new("How many miles in a marathon?","26.2")
card_2 = Card.new("How many feet in a mile?", "5280")
card_3 = Card.new("Where did the marathon originate?","Greece")
deck = Deck.new([card_1,card_2,card_3])
round = Round.new(deck)
round.start
puts "Hello! You are playing will #{deck.length} cards!"
puts "------------------------------------------------"
puts "This is card number #{round.current_card} out of #{deck.length}."
puts "#{round.current_card}"
user_input = gets.chomp
puts "#{guess.correct?}"
puts "This is card number #{round.current_card} out of #{deck.length}."
user_input = gets.chomp
puts "#{guess.correct?}"
puts "This is card number #{round.current_card} out of #{deck.length}."
user_input = gets.chomp
puts "#{guess.correct?}"
