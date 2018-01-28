class Card
  attr_reader :question,
              :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end
end

class Guess
  def initialize(guess, card)
    @guess = guess
    @card = card
    @correct = 0
  end

  def card
    @card
  end

  def correct?
    if @card == guess
      @correct += 1
      puts true
    else
      false
    end

  def feedback
    if correct? == true
      puts "Correct!"
    else
      puts "Incorrect!"
  end
end

class Deck
  def initialize([card_1,card_2,card_3])
    @card_1 = card_1
    @card_2 = card_2
    @card_3 = card_3
    @cards = [@card_1,@card_2,@card_3]
  end

  def cards
    @cards
  end

  def count
    @cards.count
  end
end

class Round
  def initialize(deck = Deck.new[card_1,card_2,card_3])
    @card_1 = card_1
    @card_2 = card_2
    @card_3 = card_3
    @cards = [@card_1,@card_2,@card_3]
    @guesses = [0]
  end

  def deck
    @cards
  end

  def guesses
    @guesses.push(1)
  end

  def count
    @guesses.sum
  end

  def number_correct
    guess.correct
  end

  def  percent_correct
    @guesses/guess.correct
  end
end

card_1 = Card.new("What is the capital of Alaska?", "Juneau")
guess = gets.chomp
card = card_1
guess = Guess.new(guess, card)

puts "Hello! You are playing with 1 card."
puts card_1.question
guess = gets.chomp
puts guess.correct?

##{deck.count}
