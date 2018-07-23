class PigLatinizer

  attr_reader :text

  def initialize(text)
      @text = text.downcase
  end

  def convert_to_piglatin
    words = text.split(" ")
    finished_words = []

    words.each do |word|
      case
      when word.match(/^aeiouAEIOU/)
        word += "way"
        finished_words << word
      end
    end
  end

end
