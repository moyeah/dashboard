class UnitsController < ApplicationController
  before_filter :signed_in_user

  def index
  end

  def show
  end

  def new
    @project = Project.find(params[:project_id])
    @unit = @project.units.build
  end

  def create
    @project = Project.find(params[:project_id])
    @unit = @project.units.build(params[:unit])
    if @unit.save
      flash[:success] = "Unit created!"
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end
end
