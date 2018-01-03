class ArticleController < ApplicationController
  def list
    limit  = 3
    offset = (params[:page].to_i - 1) * limit

    @articles = Article.offset(offset).limit(limit)
  end
end
