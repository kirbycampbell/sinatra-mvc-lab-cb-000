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
        word += "way"
        finished_words << word
      when word.match(/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{2})
        dub_consonant = word[/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{2}]
        word -= dub_consonant
        word += dub_consonant
        finished_words << word
      end
    end
    finished_words.join(",")
  end

end
