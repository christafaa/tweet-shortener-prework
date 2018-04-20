def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(string)
  replacements = dictionary
  result = []
  string.split(' ').each do |word|
    if replacements[word]
      result << replacements[word]
    else
      result << word
    end
  end
  result.join(' ')
end

def bulk_tweet_shortener(array)
  array.each {|tweet| puts word_substituter(tweet)}
end
