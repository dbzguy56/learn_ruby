#write your code here
def echo(repeat)
  repeat
end

def shout(yell)
  yell.upcase
end

def repeat(blah, num = 2)
  ((blah + " " ) * num).rstrip
end

def start_of_word(word, num = 1)
  word[0..(num-1)]
end

def first_word(phrase)
  phrase.split(" ").first
end

def titleize(phrase)
  arr = phrase.split
  phrase = ""
  arr.each do |word|
    if ((phrase == "") || (word != "is" && word != "the" && word != "a" && word != "an" && word != "and" && word != "over"))
      letter = start_of_word(word)
      newLetter = shout(letter)
      phrase += word.sub(letter, newLetter) + " "
    else
      phrase += word + " "
    end
  end
  phrase.rstrip
end
