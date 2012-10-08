class TheCafe < NetworkExecutive::Channel

  schedule 'wows', duration: 30.minutes do
    hourly( 1 ).minute_of_hour( 0 )
  end

  schedule 'custom_ink_tweets', duration: 30.minutes do
    hourly( 1 ).minute_of_hour( 30 )
  end

end