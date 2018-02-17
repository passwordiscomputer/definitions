class Words
  @@dictionary = {}
  attr_accessor :word, :definition, :example, :part_of_speech
  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
    @example = attributes.fetch(:example)
    @part_of_speech = attributes.fetch(:part_of_speech)
  end

  def save()
    if @@dictionary.key?(self.word[0].downcase)
      @@dictionary[word[0].downcase].push(self)
    else
      @@dictionary.merge!(word[0].downcase=>[self])
    end
  end

  def self.all()
    @@dictionary
  end

  def self.clear()
    @@dictionary = []
  end

  def self.find(word)
    @@dictionary[word[0]].each do |item|
      if item.word == word
        return item
      end
    end
  end

end
