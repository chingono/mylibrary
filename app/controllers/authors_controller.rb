class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new

    @author.affiliation = params[:affiliation]

    @author.first_name = params[:first_name]

    @author.last_name = params[:last_name]



    if @author.save
      redirect_to "/authors", :notice => "Author created successfully."
    else
      render 'new'
    end

  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])


    @author.affiliation = params[:affiliation]

    @author.first_name = params[:first_name]

    @author.last_name = params[:last_name]



    if @author.save
      redirect_to "/authors", :notice => "Author updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @author = Author.find(params[:id])

    @author.destroy


    redirect_to "/authors", :notice => "Author deleted."

  end
end
