class LinksController < ApplicationController

  before_action :require_authentication, only: [:index, :show, :update, :destroy]

  def index
    @links = Link.all.order(created_at: :desc)
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    @link.user = current_user
    if @link.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy

  end

  private
  def link_params
    return params.require(:link).permit(:title, :url)
  end


end
