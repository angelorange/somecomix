class ComicsController < ApplicationController
  def index
    @comics = Comic.all
  end

  def show
    @comics = Comic.find(params[:id])
  end
end
