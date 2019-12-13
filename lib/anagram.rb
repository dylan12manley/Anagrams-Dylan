class Anagram
  attr_accessor(:word_one, :word_two)

  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
    @vowels =  ["a", "e", "i", "o", "u", "y"]
    @return_statement = ""
    @are_words = ""
  end

  def anagram_finder
    @word_one = @word_one.downcase.split('').sort
    @word_two = @word_two.downcase.split('').sort
    if @word_one == @word_two
      @return_statement = "These words are anagrams."
    else
      @return_statement = "These words are not anagrams."
    end
    @return_statement
  end

  def word_finder
    @word_one = @word_one.downcase.split('').sort
    @word_two = @word_two.downcase.split('').sort
    @word_one.each do |letter|
      if @vowels.include?(letter)
        @word_two.each do |letter|
          if @vowels.include?(letter)
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

  def antigram_finder
    @word_one = @word_one.downcase.split('').sort
    @word_two = @word_two.downcase.split('').sort
  end
end
