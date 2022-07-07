dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, dictionary) 
  #This is the return string
  substring_hash = Hash.new(0)

  #loops for every starting index in string range
  for i in 0..string.length-1
    #loops for every ending index in string range
    for x in 0..string.length-1
      #skips if the word doesn't exist, because i is larger than x in the range.
      next if i > x

      #gets current string from range (and downcases)
      current_word = string[i..x]
      current_word.downcase!

      #Checks every word in dictionary, and adds to return output, if they are the same
      for word in dictionary
        word.downcase!
        substring_hash[word] += 1 if word == current_word
      end
    end
  end
  #return
  substring_hash
end  
#Run the method
puts substrings("Howdy partner, sit down! How's it going?", dictionary)