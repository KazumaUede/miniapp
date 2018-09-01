class CommentsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]


  def index
    @comments = Comment.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @comment = Comment.new
  end

  def create
    Comment.create(picture: comment_params[:picture], text: comment_params[:text], user_id: current_user.id)
  end

  def destroy
      comment = Comment.find(params[:id])
      comment.destroy if comment.user_id == current_user.id
  end

  def edit
      @comment = Comment.find(params[:id])
  end

  def update
      comment = Comment.find(params[:id])
      comment.update(comment_params) if comment.user_id == current_user.id
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:picture, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
