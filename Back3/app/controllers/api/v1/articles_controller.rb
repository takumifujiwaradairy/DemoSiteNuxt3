class Api::V1::ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json:  articles
  end

  def show
  end

  def create
    article = Article.new(article_params)
    article.user_id = current_user.id
    if article.save
      render json: article 
    else
      render json: article.errors, status: 422
    end
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy!
  end

  def update
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :id)
  end
end
