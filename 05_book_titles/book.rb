class Book
# write your code here

  attr_reader :title


  def title=(words)
  
    littles = ["and", "the", "a", "it", "in", "on", "at", "over", "of", "an"]
    capitals = []
    past_first_word = false
  
    words.split.each do |word|
      to_push = ""
      if (littles.include? word and past_first_word)
        to_push = word
      else
        to_push = word.capitalize
      end
    
      capitals.push to_push
    
      past_first_word = true
    end
  
    @title = capitals.join " "
  end
  
end
