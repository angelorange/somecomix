class ComicsController < ApplicationController
  def index
    @comics = Comic.all
  end

  def show
    @comic = Comic.find(params[:id])
    @pages = Page.where(comic: @comic)
    @pages = [] if @pages.nil?
  end

  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comics_params)
      if @comic.save
        flash[:success] = 'It was created successfully'
        redirect_to @comic
      else
        render :new
      end
  end

  def edit
    @comic = Comic.find(params[:id])
  end

  def update
    @comic = Comic.new(comics_params)
    if @comic.save
      flash[:success] = 'It was succesfully edited'
      redirect_to @comic
    else
      render :new
    end
  end

  def destroy
    @comic = Comic.find(params[:id])
    @comic.destroy
    flash[:alert] = 'It was deleted successfully'
    redirect_to comics_path
  end
  private

  def comics_params
    params.require(:comic).permit(:title)
  end

end
