dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(word,dictionary)
    hash_value = {};
    for i in 0..dictionary.length-1
        if hash_value[dictionary[i]] == nil
            hash_value[dictionary[i]] = 0
        end    
        if word.include?(dictionary[i])       
            hash_value[dictionary[i]] += 1
        end
    end
    puts hash_value.select {|word, value| value > 0 }
            
end    
substrings("below",dictionary)
