require 'pry'

def dictionary
  substitutes = { "hello" => "hi",
                  "to" => "2",
                  "too" => "2",
                  "two" => "2",
                  "for" => "4",
                  "four" => "4",
                  "be" => "b",
                  "you" => "u",
                  "at" => "@",
                  "and" => "&",
                }
end
# each tweet is iterated
def word_substituter(tweets)
  short_tweet = []
  tweets.split().each do |word|
    short_tweet << (dictionary[word.downcase] ? dictionary[word.downcase] : word)
  end
  short_tweet.join(' ')
end

#word_substituter("OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?")
word_substituter("OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?")


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    tweet = word_substituter(tweet)
    puts "#{tweet}"
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet[0..136] + "..."
  else
    tweet
  end
end
