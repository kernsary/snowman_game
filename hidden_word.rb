class HiddenWord

attr_reader :word, :displayed_word

 def initialize(word)

   @word = word
   @displayed_word = "*" * word.length()

 end


end
