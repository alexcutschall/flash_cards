gem 'minitest', '~> 5.2'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/flash_card_classes.rb'

class CardTest < Minitest::Test
  def test_card_exist
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_instance_of card, Card.new("What is the capital of Alaska?", "Juneau")
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


class GuessTest < Minitest::Test
  def test_guess_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert guess, Guess.new
  end


  def test_guess_card
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Trash String", card)
    assert guess, guess.card
  end

  def test_correct_response
    guess = Guess.new("What is the capital of Alaska?", "Juneau")
    assert "Juneau", guess.response
  end

  def test_guess_correct?
    guess = Guess.new("What is the capital of Alaska?", "Juneau")
    assert true, guess.correct?
  end

  def test_feedback
    guess = Guess.new("Juneau", card)
    assert "Correct!", guess.feedback
  end
end

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


class RoundTest < Minitest::Test
  def test_round_exists
    round = Round.new(deck)
    assert round, Round.new(deck)
  end

  def test_round_deck
    round = Round.new([card_1, card_2])
    assert [card_1, card_2], round.deck
  end

  def test_round_guesses
    round = Round.new(deck)
    assert [], round.guesses
  end

  def test_round_current_card
    #don't know what the current card should be?
    round = Round.new([card1])
    assert card1, round.current_card
  end

  def test_round_record_guess(number)
    round = Round.new(deck)
    assert 2, round.record_guess("2")
  end

  def test_guesses_count
    round = Round.new(deck)
    round.record_guess("2")
    assert 2, guess.count
  end

  def test_round_guess_feedback
    round = Round.new(deck)
    assert "Incorrect", round.guesses.last.feedback
  end

  def test_number_correct
    round = Round.new(deck)
    assert 1, round.number_correct
  end

  def test_percent_correct
    round = Round.new(deck)
    assert 50, round.percent_correct
  end
end
