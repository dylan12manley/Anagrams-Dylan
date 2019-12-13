class Anagram
  attr_accessor(:word_one, :word_two)

  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
    @vowels =  ["a", "e", "i", "o", "u", "y"]
    @return_statement = ""
  end

  def anagram_finder
    sorted_word_one = @word_one.downcase.split('').sort
    sorted_word_two = @word_two.downcase.split('').sort
    @word_one = sorted_word_one
    @word_two = sorted_word_two
    sorted_word_one.each do |letter|
      if @vowels.include?(letter)
        sorted_word_two.each do |letter|
          if @vowels.include?(letter)
            if @word_one == @word_two
              @return_statement = "These words are anagrams."
            else
              @return_statement = "These words are not anagrams."
            end
          else
            @return_statement = "These do not contain vowells, and aren't words."
          end
        end
      else
        @return_statement = "These do not contain vowells, and aren't words."
      end
    end
    @return_statement
  end
end
