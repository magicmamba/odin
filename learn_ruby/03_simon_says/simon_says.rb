def hello
	"Hello!"
end 

def greet(who)
  "Hello, #{who}!"
end

def echo(text)
	text
end 

def shout(text)
	text.upcase
end 

def repeat(text,n = 2)
	([text] * n).join(" ")
end 

def start_of_word(text,n)
	text[0..n-1]
end

def first_word(text)
	text.split.first
end

def titleize(text)
  words = text.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end