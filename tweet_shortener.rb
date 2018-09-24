# Write your code here.
def dictionary
  dict = {
    "hello" => "hi",
    "too" => "2",
    "two" => "2",
    "to" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(yar)
  yar.split.collect do |x|
     if dictionary.keys.include?(x.downcase)
       x = dictionary[x.downcase]
     else
       x
     end
   end.join(" ")
 end

 def bulk_tweet_shortener(yar)
   yar.collect do |x|
     puts word_substituter(x)
   end
 end

 def selective_tweet_shortener(yar)
  if yar.length > 140
    word_substituter(yar)
  else
    yar
  end
 end

 def shortened_tweet_truncator(yar)
yar.slice(0, 140)
 end
