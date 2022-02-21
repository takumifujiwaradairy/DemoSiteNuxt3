class Api::V1::LikesController < ApplicationController
  def create
    like = current_user.likes.build(likes_params)
    like.save
  end

  def destroy
    current_user.likes.destroy(likes_params)
  end

  private
  def likes_params
    params.require(:like).permit(:article_id)
  end
end
