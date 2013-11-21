class CommentVoteController < ApplicationController
  def create
    @comment = Comment.find(params[:comment_id])
    @comment.comment_votes.create(direction: params[:direction])

      # redirect_to '/posts'

  end
end
