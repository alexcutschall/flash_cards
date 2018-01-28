require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/cards.rb'

class CardsTest < Minitest::Test

  def test_card_exist
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert card, Card.new
  end

  def test_card_question
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert "What is the capital of Alaska?", card.question
  end

  def test_card_answer
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert "Juneau", card.answer 
  end
end
