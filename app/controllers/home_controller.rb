class HomeController < ApplicationController
  def index
    @tracks = RSpotify::Artist.search(params[:q] || 'burna')&.first
  end
end
