class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
  end

  def new
    @comic = Comic.find(params[:comic_id])
    @page = Page.new
  end

  def create
    @comic = Comic.find(params[:comic_id])
    @page = Page.new(page_params)
      if @page.save
        flash[:success] = 'It was created successfully'
        redirect_to comic_page_path(@comic, @page)
      else
        render :new
      end
  end

  def edit
    @page = Page.find(params[:id])
    @comic = Comic.find(params[:comic_id])
  end

  def update
    @page = Page.find(params[:id])
    @comic = Comic.find(params[:comic_id])
    if @page.update(page_params)
      flash[:success] = 'It was succesfully edited'
      redirect_to comic_page_path(@comic, @page)
    else
      render :new
    end
  end

  private

  def page_params
    params.require(:page).permit(:text, :comic_id)
  end
end