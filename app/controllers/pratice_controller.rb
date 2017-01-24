class PraticeController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def show
    @group = Group.find(params[:id])
  end

  def create
    @grou = Group.new(group_params)
    if @group.save
      redirect_to groups_path
    else
      render :new
    end
  end
end
