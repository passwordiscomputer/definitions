class Definition
  attr_accessor :definition, :example, :part_of_speech
  def initialize(attributes)
    @definition = attributes.fetch(:definition)
    @example = attributes.fetch(:example)
    @part_of_speech = attributes.fetch(:part_of_speech)
  end
end
