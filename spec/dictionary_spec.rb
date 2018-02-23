require('rspec')
require('words')
require('pry')

describe("#words")
  describe('.new') do
    it("creates a word and returns a the word using a reader method") do
      word = Words.new({:word=>"hello", :definition=>"world",:example=>"hello world", :part_of_speech=>"noun"})
      expect(word.word).to(eq("hello"))
    end
  end
  describe('.add_definition') do
    it("creates a word adds a definition then returns the definition") do
      word = Words.new({:word=>"hello"})
      word.add_definition("world")
      expect(word.definition_list[0]).to(eq("world"))
    end
  end
  describe('.save & find') do
    it("saves a word to the dictionary class object then retrieves the word") do
      word = Words.new({:word=>"hello"})
      word.save
      expect(Words.find("hello")).to(eq(word))
    end
  end
  describe('#all') do
    it("returns all words in dicitonary") do
      word_1 = Words.new({:word=>"hello"})
      word_1.save
      word_2 = Words.new({:word=>"goodbye"})
      word_2.save
      expect(Words.all["h"][1].word).to(eq("hello"))
    end
  end
  # describe('.new') do
  #   it("creates a word and returns a the word using a reader method") do
  #     word = Words.new({:word=>"hello", :definition=>"world",:example=>"hello world", :part_of_speech=>"noun"})
  #     expect(word.word).to(eq("hello"))
  #   end
  # end
