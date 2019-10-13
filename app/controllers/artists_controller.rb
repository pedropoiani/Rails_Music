class ArtistsController < ApplicationController
  def index
      @consulta = Track.all
  end
end
