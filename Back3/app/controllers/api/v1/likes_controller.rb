class Api::V1::LikesController < ApplicationController
  def create
    like = current_user.likes.build(likes_params)
    like.save
  end

  private
  def likes_params
    params.require(:like).permit(:article_id)
  end
end
