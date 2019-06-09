class IdeasController < ApplicationController
  def index
    @search_term = params[:q]
    logger.info("Search completed using #{@search_term}.")
    @ideas = Idea.all
  end

  def new
  end

  def create
    idea = Idea.new
    idea.title = params[:title]
    idea.done_count = params[:done_count]
    idea.photo_url = params[:photo_url]
    idea.save!
    redirect_to(ideas_index_path)
  end

  def edit
    id = params[:id] # extract the identifier from the params Hash
    @idea = Idea.find(id)
  end

  def update
    # retrieve the instance using the identifier
    idea = Idea.find(params[:id])
    idea.title = params[:title]
    idea.done_count = params[:done_count]
    idea.photo_url = params[:photo_url]
    idea.save!
    redirect_to(account_ideas_path)
  end
end
