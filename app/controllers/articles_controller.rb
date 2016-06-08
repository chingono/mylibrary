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

  def my_recs
    @liked_category_ids = current_user.liked_articles.pluck(:category_id)

    # Mode====
    leader = nil
    leader_count = 0
    @liked_category_ids.each do |category_id|
      occurrences = @liked_category_ids.count(category_id)

      if occurrences > leader_count
        leader = category_id
        leader_count = occurrences
      end
    end

    @mode_category = leader

    # Recommendations
    @target_articles = Article.where({ :category_id => @mode_category })

    @recommendations = @target_articles.sample(3)

    render("my_recs.html.erb")

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
      redirect_to "/taggings/new", :notice => "Final step: add at least one topic tag to your new article."
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
