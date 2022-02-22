class Api::V1::ArticlesController < ApplicationController
  def index
    articles = Article.all.map do |article|
      article.likes_count = article.likes.count
      article
    end
    render json: articles.to_json(methods: [:likes_count, :is_like])
  end

  def show
  end

  def create
    article = Article.new(article_params)
    article.user_id = current_user.id
    if article.save
      render json: article.to_json(methods: [:likes_count, :is_like])
    else
      render json: article.errors, status: 422
    end
  end

  def destroy
    article = current_user.articles.find(params[:id])
    article.destroy
  end

  def update
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
