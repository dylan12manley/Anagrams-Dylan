require('rspec')
require('anagram')

describe('#anagram_finder') do
  it('checks if Pants and pants are anagrams') do
    anagram = Anagram.new("PANTS", "pants")
    expect(anagram.anagram_finder()).to(eq("These words are anagrams."))
  end
  it('checks if Pants and spant are anagrams') do
    anagram = Anagram.new("PANTS", "spant")
    expect(anagram.anagram_finder()).to(eq("These words are anagrams."))
  end
  it('checks if pfff and fpff are words') do
    anagram = Anagram.new("pfff", "fpff")
    expect(anagram.word_finder()).to(eq("These do not contain vowells, and aren't words."))
  end
  it('checks if hi and bye are antigrams') do
    anagram = Anagram.new("hi", "bye")
    expect(anagram.antigram_finder()).to(eq("These are antigrams."))
  end
  it('insures puncuation in words do not affect them being anagrams') do
    anagram = Anagram.new("hi!", "hi")
    expect(anagram.anagram_finder()).to(eq("These words are anagrams."))
  end
  it('checks if multiple words are anagrams') do
    anagram = Anagram.new("hi there", "therehi")
    expect(anagram.anagram_finder()).to(eq("These words are anagrams."))
  end
end
