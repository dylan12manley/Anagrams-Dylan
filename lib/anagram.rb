class Anagram

  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
    @word_one = @word_one.gsub(/[\s[:punct:]]/, '').downcase.split('').sort
    @word_two = @word_two.gsub(/[\s[:punct:]]/, '').downcase.split('').sort
    @return_statement = ""

    def anagram_finder
      if @word_one == @word_two
        @return_statement = "These words are anagrams."
      else
        @return_statement = "These words not anagrams."
      end
      @return_statement
    end
  end

  def antigram_finder
    @word_one.each do |letter|
      if @word_two.include?(letter)
        @return_statement = "These are not antigrams."
      else
        @return_statement = "These are antigrams."
      end
    end
    @return_statement
  end


  def word_finder
    @word_one.each do |letter|
      if /W[aeiou]rd/.match(@word_one.to_s) && /W[aeiou]rd/.match(@word_2.to_s)
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
