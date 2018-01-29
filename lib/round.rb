require './lib/guess'
require 'pry'
class Round
  attr_reader :deck,
              :guesses,
              :number_correct

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = 0
    @number_correct = 0
  end

  def current_card
    @deck.cards[@current_card]
  end

  def record_guess(response)
    guesses << guess = Guess.new(response,current_card)
    @current_card += 1
    @number_correct += 1 if guess.correct?
    guess
  end

  def percent_correct
    (@number_correct.to_f / @guesses.length.to_f * 100).round
  end

  # def start
  #   @deck
  #   @deck.record_guess(response)
  # end
end
