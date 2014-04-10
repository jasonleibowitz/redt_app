class VotesController < ApplicationController

  def new
    @vote = Vote.new
    @vote.link = Link.find(params[:link_id])
    @vote.vote = params[:vote]
    @vote.save
    @vote.user = User.find(params[:user_id])
    redirect_to root_path
    # render text: params.inspect
  end

  def create
    # @vote = Vote.new(vote_params)
    # @vote.user = current_user
    # @vote.save
    render text: params.inspect
  end

  def change_vote
    @old_vote = Vote.find(params[:id])
    @old_vote.destroy
    @new_vote = Vote.new
    @user = User.find(params[:user])
    @new_vote.vote = params[:vote]
    @new_vote.user = @user
    @new_vote.save
    redirect_to root_path
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    redirect_to root_path
  end

  private
  def vote_params
    return params.require(:vote).permit(:vote, :link_id)
  end

end
