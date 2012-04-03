class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    #raise params.inspect
    article = Article.new
    article.title = params["article"]["title"]
    article.title = params["article"]["title"]
    article.save
    redirect_to article_path(article)
  end

  def destroy
    #find the article
    #delete it from the database
    #redirect to index

    article = Article.find(params[:id])
    article.destroy
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id]) 
    article.title = params[:article][:title]
    article.body = params[:article][:body]
    article.save
    redirect_to article_path(article)
  end
end
