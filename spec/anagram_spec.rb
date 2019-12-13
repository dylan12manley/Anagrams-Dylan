require('rspec')
require('anagram')

describe('#anagram_finder') do
  it('checks if two words are anagrams') do
    anagram = Anagram.new("RUBY", "Bury")
    expect(anagram.anagram_check()).to(eq("These words are anagrams"))
  end
end
