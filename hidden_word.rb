class HiddenWord

  attr_reader :word, :displayed_word

  def initialize(word, guessed_letter)

    @word = word
    @displayed_word = "*" * word.length()
    @guessed_letter = guessed_letter

  end

  def check_letter_included()
    return @word.include?(@guessed_letter)
  end


end
