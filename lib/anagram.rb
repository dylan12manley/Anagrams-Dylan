class Anagram
  attr_accessor(:word_one, :word_two)

  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
    @vowels =  ["a", "e", "i", "o", "u", "y"]
    @return_statement = ""
  end

  def anagram_finder
    @word_one = @word_one.downcase.split('').sort
    @word_two = @word_two.downcase.split('').sort
    first_word = @word_one
    seccond_word = @word_two
    puts first_word
    puts seccond_word
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
# word finder
    # @word_one.each do |letter|
    #   if @vowels.excludes?(letter)
    #     @return_statement = "These do not contain vowells, and aren't words."
    #   end
    # end
    # @word_two.each do |letter|
    #   if @vowels.excludes?(letter)
    #     @return_statement = "These do not contain vowells, and aren't words."
    #   end
    # end
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
    @word_one.each do |letter|
      if @word_two.include?(letter)
        @return_statement = "These are not antigrams."
      else
        @return_statement = "These are antigrams."
      end
    end
    @return_statement
  end
end
