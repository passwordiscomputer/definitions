class Words
  @@dictionary = []
  attr_accessor :word, :definition, :example
  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
    @example = attributes.fetch(:example)
  end

  def save()
    @dictionary.push(self)
  end

  def self.all()
    @@list
  end

  def self.clear()
    @@list = []
  end

end
