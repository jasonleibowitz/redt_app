class VotesController < ApplicationController

  def new
    @vote = Vote.new
    @vote.link = Link.find(params[:link_id])
    @vote.user = User.find(params[:user_id])
    @vote.vote = params[:vote]
    @vote.save
    redirect_to root_path
    # render text: params.inspect
  end

  def create
    # @vote = Vote.new(vote_params)
    # @vote.user = current_user
    # @vote.save
    render text: params.inspect
  end

  private
  def vote_params
    return params.require(:vote).permit(:vote, :link_id)
  end

end
