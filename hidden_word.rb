class HiddenWord

  attr_reader :word, :displayed_word, :guess, :response

  def initialize(word)

    @word = word
    @displayed_word = "*" * word.length()
    # @displayed_word.gsub( / @word / , "*")

    @guess = ""
    @reponse = ""

  end

  # def receive_guess(guess)
  #   @guess = guess
  #   word_copy = @word
  #   check_letter_included(guess)
  #   if word_copy.include?(guess)
  #     word_copy.gsub(/ !@guess /, "*")
  #   end
  # end

  def receive_guess(guess)
    if !@word.include?(guess)
      @response = "Wrong guess! Try again."
    end
    length = @word.length - 1
    for position in (0..length)
      if @word[position] == guess
        @displayed_word[position] = guess
        @response = @displayed_word
      end
    end
  end

end
