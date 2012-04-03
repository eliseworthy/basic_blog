class ArticlesController < ApplicationController

  before_filter :lookup_article, :only => [:show, :edit, :destroy, :update]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new(params[:article])
    article.save
    redirect_to article_path(article)
  end

  def destroy
    @article.distroy
    redirect_to articles_path
  end

  def edit
  end

  def update
    @article.update_attributes(params[:article])
    @article.save
    redirect_to article_path(@article)
  end

  def lookup_article
    @article = Article.find(params[:id])
  end
end
