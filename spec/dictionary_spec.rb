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
  # describe('.new') do
  #   it("creates a word and returns a the word using a reader method") do
  #     word = Words.new({:word=>"hello", :definition=>"world",:example=>"hello world", :part_of_speech=>"noun"})
  #     expect(word.word).to(eq("hello"))
  #   end
  # end
  # describe('.new') do
  #   it("creates a word and returns a the word using a reader method") do
  #     word = Words.new({:word=>"hello", :definition=>"world",:example=>"hello world", :part_of_speech=>"noun"})
  #     expect(word.word).to(eq("hello"))
  #   end
  # end
  # describe('.new') do
  #   it("creates a word and returns a the word using a reader method") do
  #     word = Words.new({:word=>"hello", :definition=>"world",:example=>"hello world", :part_of_speech=>"noun"})
  #     expect(word.word).to(eq("hello"))
  #   end
  # end
