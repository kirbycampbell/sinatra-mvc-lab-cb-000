class PigLatinizer

  def convert_to_piglatin
    words = text.split(" ")
    finished_words = []

    words.each do |word|
      case
      when word.match(/^[aeiouAEIOU]/)
        word += "way"
        finished_words << word
      when word.match(/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{2}/)
        dub_consonant = word[/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{2}/]
        word = word[2..-1]
        word += dub_consonant
        word += "ay"
        finished_words << word
      when word.match(/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
        dub_consonant = word[/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/]
        word = word[1..-1]
        word += dub_consonant
        word += "ay"
        finished_words << word
      end
    end
    finished_words.join(" ")
  end

end
