require('rspec')
require('words')
require('pry')

describe('dictionary') do
  it("creates a word and returns a definition using a reader method") do
    word = Words.new({:word=>"hello", :definition=>"world",:example=>"hello world"})
    expect(word.word).to(eq("hello"))
  end
   it("adds word to a list of words and returns the definition of a spcific word") do
     word = Words.new({:word=>"hello", :definition=>"world",:example=>"hello world"})
     word.save
     word2 = Words.new({:word=>"goodbye", :definition=>"universe",:example=>"hello world"})
     word.save
     x = Words.find("hello")
     expect(Words.find("hello").definition).to(eq("world"))
  end
end
