class VotesController < ApplicationController

  def create
    if params[:comment_id]
      @comment = Comment.find(params[:comment_id])
      @comment.votes.create(direction: params[:direction])
      redirect_to @comment.post
    else
      @post = Post.find(params[:post_id])
      @post.votes.create(direction: params[:direction])
      redirect_to '/posts'
    end
  end

end
