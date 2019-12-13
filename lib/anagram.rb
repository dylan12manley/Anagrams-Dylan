class Anagram
  attr_accessor(:word_one, :word_two)

  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
  end

  def anagram_finder
    sorted_word_one = @word_one.downcase.split('').sort
    sorted_word_two = @word_two.downcase.split('').sort
    @word_one = sorted_word_one
    @word_two = sorted_word_two
    if @word_one == @word_two
      return_statement = "These words are anagrams."
    end
    return_statement
  end
end
