class Api::V1::LikesController < ApplicationController
  def create
    like = current_user.likes.build(likes_params)
    like.save
    article_count = Article.find(likes_params[:article_id]).likes.count
    render json: article_count
  end

  def destroy
    like = current_user.likes.find_by(params[:article_id])
    if like.destroy
      likes_count = Like.where(params[:article_id]).count
      render json: likes_count 
    end
  end

  private
  
  def likes_params
    params.require(:like).permit(:article_id)
  end
end
