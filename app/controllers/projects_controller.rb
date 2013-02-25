class ProjectsController < ApplicationController
  before_filter :signed_in_user

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:success] = "Project successfully created"
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end
end
