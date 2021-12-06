class SchoolsController < ApplicationController
  before_action :is_elder?, except: :index
  before_action :school, only: [:edit, :update, :destroy]

  def initialize
    super
    @new_school = School.new
  end

  def index
    @schools = School.all.preload(:witchers)
  end

  def create
    @school = School.create(school_params)
  end

  def edit; end

  def update
    @school.update(school_params)
  end

  def destroy
    @school.destroy
  end

  private

  def school_params
    params.require(:school).permit(:name, :location)
  end

  def school
    @school = School.find(params[:id])
  end
end
