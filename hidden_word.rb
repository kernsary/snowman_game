class HiddenWord

  attr_reader :word, :displayed_word, :guess

  def initialize(word)

    @word = word
    @displayed_word = "*" * word.length()
    @guess = ""

  end

  def receive_guess(guess)
    @guess = guess
    return @guess
  end

  # def check_letter_included(guess)
  #   return @word.include?(guess)
  # end


end
