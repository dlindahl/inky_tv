class UncensoredReviews < NetworkExecutive::Program
  include NetworkExecutive::Components::FeedPlayer

  def url
    '/shows/uncensored_reviews'
  end

  def feed_url
    'http://www.customink.com/reviews/feed.rss'
  end

  Description = /"(?<body>.+(?="))" -(?<author>.+(?=\., )\.), (?<location>.+)/m

  def items
    feed['rss']['channel']['item'].each_with_object([]) do |review, items|
      desc = review['description'].match( Description )

      next unless desc

      raw_loc  = desc[:location].split(', ')

      body     = desc[:body]
      author   = desc[:author]
      location = raw_loc[-2..-1].join(', ')

      items << {
        body:     body.strip,
        author:   author,
        location: location
      }
    end
  end
end