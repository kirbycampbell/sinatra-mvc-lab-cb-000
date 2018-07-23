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
      when word.match(/^[aeiouAEIOU]/)
        new_word = word + "way"
        finished_words << new_word
      end
    end
    finished_words.join(",")
  end

end
