class Api::V1::ArticlesController < ApplicationController
  def index
    article = Article.all
    render json:  article
  end

  def show
  end

  def create
    article = Article.new(article_params)
    if article.save
      render json: article 
    else
      render json: article.errors, status: 422
    end
  end

  def destroy
  end

  def update
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
