class ArticlesController < ApplicationController
  def index
    @group_id = params[:group_id] ? params[:group_id].to_i : 1
    @page     = params[:page] ? params[:page].to_i : 1

    limit  = 3
    offset = (@page - 1) * limit

    # 刹那(Q&Aか雑談か)
    @topic = Question.find(@group_id);

    @articles = Article.offset(offset).limit(limit).where(group_id: params[:group_id]).where(parent_id: params[:parent_id])
    @article  = Article.new()
  end

  def new
    @article = Article.new()

    if params[:article] && params[:article][:parent_id] then
      @parent_article = Article.find(params[:article][:parent_id])
    end
  end

  def create
    dto = {
      :title   => params[:article][:title],
      :body    => params[:article][:body],
      :user_id => 1 # 暫定
    }

    if params[:article][:parent_id] then
      dto[:parent_id] = params[:article][:parent_id]
    end

    Article.create! dto

    redirect_to :action => 'index'
  end
end
