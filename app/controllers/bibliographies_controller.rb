class BibliographiesController < ApplicationController
  def index
    @bibliographies = Bibliography.all
  end

  def show
    @bibliography = Bibliography.find(params[:id])
  end

  def new
    @bibliography = Bibliography.new
  end

  def create
    @bibliography = Bibliography.new

    @bibliography.article_id = params[:article_id]

    @bibliography.author_id = params[:author_id]



    if @bibliography.save
      redirect_to "/bibliographies", :notice => "Bibliography created successfully."
    else
      render 'new'
    end

  end

  def edit
    @bibliography = Bibliography.find(params[:id])
  end

  def update
    @bibliography = Bibliography.find(params[:id])


    @bibliography.article_id = params[:article_id]

    @bibliography.author_id = params[:author_id]



    if @bibliography.save
      redirect_to "/bibliographies", :notice => "Bibliography updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @bibliography = Bibliography.find(params[:id])

    @bibliography.destroy


    redirect_to "/bibliographies", :notice => "Bibliography deleted."

  end
end
