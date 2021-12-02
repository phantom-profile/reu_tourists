class SchoolsController < ApplicationController
  before_action :is_elder?, only: [:create, :destroy]

  def index
    @schools = School.all.preload(:witchers)
    @school = School.new
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
  end

  def create
    @school = School.create(school_params)
  end

  private

  def school_params
    params.require(:school).permit(:name, :location)
  end
end
