class Book

  def title=(title)
    little_words = ["and", "in", "the", "of", "a", "an"]
    words = title.split.map do |word|
      little_words.include?(word) ? word : word.capitalize
    end
    words[0].capitalize!
    @title = words.join(" ")
  end

  def title
    @title
  end

end
