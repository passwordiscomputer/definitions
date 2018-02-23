class Word
  @@dictionary = {}
  attr_accessor :word, :definition_list
  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition_list = []
  end

  def add_definition(definition)
    @definition_list.push(definition)
  end

  def save()
    if @@dictionary.key?(self.word[0].downcase)
      @@dictionary[word[0].downcase].push(self)
    else
      @@dictionary.merge!(word[0].downcase=>[self])
    end
    @@dictionary = Hash[@@dictionary.sort]
  end

  def self.all()
    @@dictionary
  end

  def self.clear()
    @@dictionary = {}
  end


  def self.find(word)
    @@dictionary[word[0].downcase].each do |item|
      if item.word == word
        return item
      end
    end
  end

end
