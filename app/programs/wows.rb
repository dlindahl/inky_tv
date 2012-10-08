class Wows < NetworkExecutive::Program

  def display_name
    'The MOD - WOWs'
  end

  def refresh
    false
  end

  def url
    'http://home.customink.com/feedback20/feedbacks/wows'
  end

end