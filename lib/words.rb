class Words
  @@dictionary = []
  attr_accessor :word, :definition, :example
  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
    @example = attributes.fetch(:example)
  end

  def save()
    @@dictionary.push(self)
  end

  def self.all()
    @@dictionary
  end

  def self.clear()
    @@dictionary = []
  end

  def self.find(word)
    @@dictionary.each do |item|
      if item.word == word
        return item
      end
    end
  end

end
