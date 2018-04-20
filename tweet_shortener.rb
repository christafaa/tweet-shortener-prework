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
    if replacements[word.downcase]
      result << replacements[word.downcase]
    else
      result << word
    end
  end
  result.join(' ')
end

def bulk_tweet_shortener(array)
  array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(array)

  if array.length > 140
    puts word_substituter(array)
  else
    puts tweet
  end


=begin
  array.each do |tweet|
    if tweet.length > 140
      puts word_substituter(tweet)
    else
      puts tweet
    end
  end
=end
end
