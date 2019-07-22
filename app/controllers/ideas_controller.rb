class IdeasController < ApplicationController
  include RolesHelper
  
  before_action :ensure_authenticated, only: [:new, :create, :edit, :update] #this will stop any resources being loaded unnecessarily for anonymous users
  before_action :load_idea,            only: [:edit, :update] #this will load Idea record before executing `ensure_owner` filter
  before_action :ensure_owner,         only: [:edit, :update] #this make use of the Idea instance

  def index
    @search_term = params[:q]
    logger.info("Search completed using #{@search_term}.")
    @ideas = Idea.search(@search_term)
  end

  def show
    @idea = Idea.find(params[:id])
    @comment = Comment.new
    @display_add_comment = session[:user_id].present?

    if(session[:user_id].present?) #check whether users are logged in or not
      @user = User.find(session[:user_id])
      @disable_add_goal = @user.goals.exists?(@idea.id)
    else
      @user = nil
    end
  end

  def new
    @idea = Idea.new
  end

  def create
    user = User.find(session[:user_id])
    @idea = Idea.new(idea_resource_params)
    @idea.user = user
    if @idea.save
      redirect_to(ideas_path)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @idea.update(idea_resource_params)
      redirect_to(account_ideas_path)
    else
      render 'edit'
    end
  end

  private

  def idea_resource_params
    params.require(:idea).permit(:title, :description, :photo_url, :done_count, :name_of_user)
  end

  def load_idea
    @idea = Idea.find(params[:id])
  end

  def ensure_owner
    redirect_to(account_path) unless(can_edit?(@idea))
  end
end
