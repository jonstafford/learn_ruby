#write your code here
def echo a
  return a
end

def shout a
  return a.upcase
end

def repeat a, num = 2
  result =  a
  num.times do |i|
    if i != 0
      result += " " + a
    end
  end
  
  return result
end

def start_of_word a, count
  return a[0..count-1]
end

def first_word a
  return a.split[0]
end

def titleize words
  littles = ["and", "the", "a", "it", "in", "on", "at", "over"]
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
  
  return capitals.join " "
end


