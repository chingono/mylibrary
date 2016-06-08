class TaggingsController < ApplicationController
  def index
    @taggings = Tagging.all
  end

  def show
    @tagging = Tagging.find(params[:id])
  end

  def new
    @article = Article.last
    @tagging = Tagging.new
  end

  def create

    @article = Article.last

    @tagging = Tagging.new

    @tagging.article_id = params[:article_id]

    @tagging.topic_id = params[:topic_id]


    if @tagging.save
      redirect_to "/articles", :notice => "Article created successfully."
    else
      render 'new'
    end

  end

  def edit
    @tagging = Tagging.find(params[:id])
  end

  def update
    @tagging = Tagging.find(params[:id])


    @tagging.article_id = params[:article_id]

    @tagging.topic_id = params[:topic_id]



    if @tagging.save
      redirect_to "/taggings", :notice => "Tagging updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @tagging = Tagging.find(params[:id])

    @tagging.destroy


    redirect_to "/taggings", :notice => "Tagging deleted."

  end
end
