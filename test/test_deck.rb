require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck.rb'

class DeckTest < Minitest::Test
  def test_deck_exists
    deck = Deck.new([card_1, card_2, card_3])
    assert deck, Deck.new
  end

  def test_deck_cards
    deck = Deck.new([card_1, card_2, card_3])
    assert [card_1, card_2, card_3], deck.cards
  end

  def test_deck_count
    deck = Deck.new([card_1, card_2, card_3])
    assert 3, deck.count 
  end
end
