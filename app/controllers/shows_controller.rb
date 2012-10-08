class ShowsController < ApplicationController

  def show
    render "shows/#{params[:program_name]}"
  end

end