dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
  result = Hash.new(0)
  words = text.downcase.split()

  words.each do |word|
    dictionary.each do |dict_word|
      if word.include?(dict_word)
        result[dict_word] += 1
      end
    end
  end

  return result
end

# Example usage:
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
puts substrings("It is going to be a low-key day.", dictionary)