class Anagram
  attr_accessor(:word_one, :word_two)

  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
    @vowels =  ["a", "e", "i", "o", "u", "y"]
    @return_statement = ""

    def anagram_finder
      @word_one = @word_one.downcase.split('').sort.delete("")
      @word_two = @word_two.downcase.split('').sort.delete("")
      first_word = @word_one
      seccond_word = @word_two
      if first_word == seccond_word
        @return_statement = "These words are anagrams."
      else
        first_word.each do |letter|
          if seccond_word.include?(letter)
            @return_statement = "These words are not anagrams."
          else
            @return_statement = "These are antigrams."
          end
        end
      end
      @return_statement
    end
  end
  # word finder
  # (/W[aeiou]rd/.match(@word_one.to_s)) == true || (/W[aeiou]rd/.match(@word_two.to_s) == true)
  # if first_word.include?(@vowels) != true || seccond_word.include?(@vowels).include? != true
  #   @return_statement = "These do not contain vowells, and aren't words."
  # else
  # end

  def word_finder
    @word_one = @word_one.downcase.split('').sort
    @word_two = @word_two.downcase.split('').sort
    @word_one.each do |letter|
      if /W[aeiou]rd/.match(@word_one.to_s) && /W[aeiou]rd/.match(@word_2.to_s)
        # if @vowels.include?(letter)
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
end
