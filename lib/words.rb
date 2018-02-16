class Words
  @@dictionary = []

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
    @example = attributes.fetch(:example)
  end

  def save()
    @dictionary.push(self)
  end

  def self.clear()
    @@list = []
  end
  
end
