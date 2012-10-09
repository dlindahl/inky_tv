class TheCafe < NetworkExecutive::Channel

  schedule 'wows', duration: 11.minutes do
    hourly( 1 ).minute_of_hour( 0 )
    hourly( 1 ).minute_of_hour( 30 )
  end

  schedule 'custom_ink_videos', duration: 4.minutes do
    hourly( 1 ).minute_of_hour( 11 )
    hourly( 1 ).minute_of_hour( 26 )
    hourly( 1 ).minute_of_hour( 41 )
    hourly( 1 ).minute_of_hour( 56 )
  end

  schedule 'custom_ink_tweets', duration: 6.minutes do
    hourly( 1 ).minute_of_hour( 15 )
    hourly( 1 ).minute_of_hour( 45 )
  end

  schedule 'custom_ink_tweets', duration: 5.minutes do
    hourly( 1 ).minute_of_hour( 21 )
    hourly( 1 ).minute_of_hour( 51 )
  end

end