require('rspec')
require('anagram')

describe('#anagram_finder') do
  it('checks if Pants and spant are anagrams') do
    anagram = Anagram.new("PANTS", "spant")
    expect(anagram.anagram_finder()).to(eq("These words are anagrams."))
  end
  it('checks if words are words') do
    anagram = Anagram.new("pfff", "fpff")
    expect(anagram.word_finder()).to(eq("These do not contain vowells, and aren't words."))
  end
end
