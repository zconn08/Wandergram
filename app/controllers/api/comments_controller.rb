class Api::CommentsController < ApplicationController
  def index
    @comments = Comment.includes(:user)
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      render :show
    else
      render json: @comment.errors.full_messages
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:post_id, :body)
  end
end
