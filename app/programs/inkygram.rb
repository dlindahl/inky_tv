class Inkygram < NetworkExecutive::Program
  include NetworkExecutive::Components::InstagramPlayer

  user_recent_media 11424403, count:50

  def display_name
    'Inkygram'
  end

end