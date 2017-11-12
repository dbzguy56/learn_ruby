# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below) but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
def translate(phrase)
  arr = phrase.split
  phrase = ""
  arr.each do |word|
    first = ""
    count = 0
    consonant = true
    while(consonant) do
      if(word[count]=="a" || word[count]=="e" || word[count]=="i" || word[count]=="o" || (word[count-1]!="q" && word[count]=="u"))
        consonant = false
      else
        first = first + word[count]
        count += 1
      end
    end
    if(first=="a" || first=="e" || first=="i" || first=="o" || first=="u")
      word += "ay"
    else
      word = word[count..-1] + first + "ay"
    end
    phrase += word + " "
  end
  phrase.rstrip
end
