def translate(text)
  words = text.split.map do |word|

    vowels = ["a","i","e","o","u"]

    if vowels.include?(word[0])
      word + "ay"

      #if starts with qu
    elsif word[0..1] == "qu"
      word[2..-1] + "quay"

    else # starts with consonent

      #if vowel next
      if vowels.include?(word[1])
        word[1..-1] + word[0] + "ay"

      else
        if word[1..2] == "qu"
          word[3..-1] + word[0..2] + "ay"
        elsif vowels.include?(word[2])
          word[2..-1] + word[0..1] + "ay"
        else
          word[3..-1] + word[0..2] + "ay"
        end
      end
    end
  end

  words.join(" ")
end
