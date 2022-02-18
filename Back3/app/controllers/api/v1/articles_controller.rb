class Api::V1::ArticlesController < ApplicationController
  def index
    article = Article.all
    render json: { status: 'status', data: article}
  end

  def show
  end

  def create
    article = Article.new(article_params)
    if article.save
      render json: { status: 'success', data: article }
    else
      render json: { status: 'error', data: article }
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
