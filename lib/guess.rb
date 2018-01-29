class Guess
  attr_reader   :response,
                :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    return true if @response.downcase == card.answer.downcase
    false
  end

  def feedback
    return "Correct!" if correct?
    "Incorrect."
  end
end
