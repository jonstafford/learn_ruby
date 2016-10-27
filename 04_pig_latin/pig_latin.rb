#write your code here


def had_qu word
  word[0] == "u" and word[-1] == "q"
end

def translate_word word
  vowel_sounds = ["a", "e", "i", "o", "u", "y"]
  #i = 0
  while not vowel_sounds.include? word[0] or had_qu word do
    puts word
    word = word[1..-1] + word[0]
    #i += 1
  end 
  
  return word + "ay"
  
end


def translate phrase

  
  result = []
  phrase.split.each do |word|
    result.push translate_word word
  end
  
  return result.join " "
end