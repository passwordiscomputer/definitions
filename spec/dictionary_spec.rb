require('rspec')
require('words')
require('pry')

describe("#words")
  describe('.new') do
    it("creates a word and returns a the word using a reader method") do
      word = Word.new({:word=>"hello", :definition=>"world",:example=>"hello world", :part_of_speech=>"noun"})
      expect(word.word).to(eq("hello"))
    end
  end
  describe('.add_definition') do
    it("creates a word adds a definition then returns the definition") do
      word = Word.new({:word=>"hello"})
      word.add_definition("world")
      expect(word.definition_list[0]).to(eq("world"))
    end
  end
  describe('.save & find') do
    it("saves a word to the dictionary class object then retrieves the word") do
      word = Word.new({:word=>"hello"})
      word.save
      expect(Word.find("hello")).to(eq(word))
    end
  end
  describe('#all') do
    it("returns all words in dicitonary") do
      word_1 = Word.new({:word=>"hello"})
      word_1.save
      word_2 = Word.new({:word=>"goodbye"})
      word_2.save
      expect(Word.all["h"][1].word).to(eq("hello"))
    end
  end
  describe('#clear') do
    it("clears all the words in a dictionary ") do
      word = Word.new({:word=>"hello"})
      word.save
      Word.clear
      expect(Word.all).to(eq({}))
    end
  end
