require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess.rb'

class GuessTest < Minitest::Test
  def test_guess_exists
    guess = Guess.new("Juneau", card)
    assert guess, Guess.new
  end

  def test_guess_card
    guess = Guess.new("What is the capital of Alaska?", "Juneau")
    assert ("What is the capital of Alaska?","Juneau"), guess.card
  end

  def test_correct_response
    guess = Guess.new("What is the capital of Alaska?", "Juneau")
    assert "Juneau", guess.response
  end

  def test_guess_correct?
    guess = Guess.new("What is the capital of Alaska?", "Juneau")
    assert true, guess.correct?
    #need to add a conditional to assert false also
  end

  def test_feedback
    guess = Guess.new("Juneau", card)
    assert "Correct!", guess.feedback
    #need to add a conditional for an incorrect
  end


end
