class ArticleController < ApplicationController
  def list
    limit  = 3
    page   = params[:page] ? params[:page].to_i : 1
    offset = (page - 1) * limit

    @articles = Article.offset(offset).limit(limit)
    @article  = Article.new();
  end

  def create_input
    @article = Article.new()

    if params[:article] && params[:article][:parent_id] then
      @parent_article = Article.find(params[:article][:parent_id])
    end
  end

  def create_confirm
    @article = Article.new()
    @article.title = params[:article][:title]
    @article.body  = params[:article][:body]

    if params[:article] && params[:article][:parent_id] then
      @parent_article = Article.find(params[:article][:parent_id])
      @article.parent_id = params[:article][:parent_id]
    end
  end

  def create_do
    dto = {
      :title   => params[:article][:title],
      :body    => params[:article][:body],
      :user_id => 1 # 暫定
    }

    if params[:article][:parent_id] then
      dto[:parent_id] = params[:article][:parent_id]
    end

    Article.create! dto

    redirect_to :action => 'list'
  end
end
