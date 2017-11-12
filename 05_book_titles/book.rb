class Book
  attr_reader :title

  def title=(title)
    @title = titleize(title)
  end

  def shout(yell)
    yell.upcase
  end

  def start_of_word(word, num = 1)
    word[0..(num-1)]
  end

  def titleize(phrase)
    arr = phrase.split
    phrase = ""
    arr.each do |word|
      if ((phrase == "") || (word != "is" && word != "the" && word != "in" && word != "a" && word != "of" && word != "an" && word != "and" && word != "over"))
        letter = start_of_word(word)
        newLetter = shout(letter)
        phrase += word.sub(letter, newLetter) + " "
      else
        phrase += word + " "
      end
    end
    phrase.rstrip
  end
end
