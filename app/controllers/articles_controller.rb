class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def my_list
    @articles = current_user.listed_articles
  end

  def my_likes
    @articles = current_user.liked_articles
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new

    @article.category_id = params[:category_id]

    @article.link = params[:link]

    @article.abstract = params[:abstract]

    @article.title = params[:title]



    if @article.save
      redirect_to "/articles", :notice => "Article created successfully."
    else
      render 'new'
    end

  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])


    @article.category_id = params[:category_id]

    @article.link = params[:link]

    @article.abstract = params[:abstract]

    @article.title = params[:title]



    if @article.save
      redirect_to "/articles", :notice => "Article updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @article = Article.find(params[:id])

    @article.destroy


    redirect_to "/articles", :notice => "Article deleted."

  end
end
