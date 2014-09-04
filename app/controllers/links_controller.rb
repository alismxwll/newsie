class LinksController < ApplicationController

  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      flash[:notice]="Post created"
      redirect_to link_path(@link)
    else
      render 'new'
    end
  end

  def show
    @link = Link.find(params[:id])
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update(link_params)
      flash[:notice]="Post updated"
      redirect_to link_path(@link)
    else
      render 'edit'
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    redirect_to link_path
  end

  private
  def link_params
    params.require(:link).permit(:content, :title, :url)
  end
end
