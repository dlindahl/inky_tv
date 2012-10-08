class CustomInkVideos < NetworkExecutive::Program
  include NetworkExecutive::Components::YouTubePlayer

  def display_name
    'YouTubery'
  end

  def onload
    { user:'customink' }
  end
end