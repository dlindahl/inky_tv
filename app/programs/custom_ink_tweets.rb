class CustomInkTweets < NetworkExecutive::Program
  include NetworkExecutive::Components::TweetPlayer

  search '@customink', count: 50

  def display_name
    '@CustomInk'
  end

  def url
    '/shows/custom_ink_tweets'
  end

  def refresh
    false
  end

end