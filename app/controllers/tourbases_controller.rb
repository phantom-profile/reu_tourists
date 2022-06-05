# frozen_string_literal: true

class TourbasesController < ApplicationController
  before_action :is_elder?, except: [:index, :my_tourbase]
  before_action :tourbase, only: %i[edit update destroy show]

  def index
    @new_tourbase = Tourbase.new
    @tourbases = Tourbase.all.preload(:tours)
  end

  def create
    @tourbase = Tourbase.create(tourbase_params)
  end

  def show
    @tours = @tourbase.tours
  end

  def edit; end

  def update
    @new_tourbase = Tourbase.new
    @tourbase.update(tourbase_params)
  end

  def destroy
    @tourbase.destroy
  end

  def my_tourbase
    @tourbase = current_user.tourbase
    @new_tour = Tour.new
  end

  private

  def tourbase_params
    params.require(:tourbase).permit(:name, :region_id, :max_capacity)
  end

  def tourbase
    @tourbase = Tourbase.find(params[:id])
  end
end
