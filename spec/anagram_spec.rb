require('rspec')
require('anagram')

describe('#anagram_finder') do
  it('checks if two words are anagrams') do
    anagram = Anagram.new("PANTS", "spant")
    expect(anagram.anagram_finder()).to(eq("These words are anagrams."))
  end
end
