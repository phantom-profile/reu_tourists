class ToursController < ApplicationController
  before_action :tour, only: %i[edit update destroy]

  def index
    @new_tour = Tour.new
    @tours = Tour.all
  end

  def create
    @tour = Tour.create(tour_params)
    Tourist.find(@tour.tourist_id).update(tour_id: @tour.id) if @tour.valid?
  end

  def edit; end

  def update
    @new_tour = Tour.new
    @tour.update(tour_params)
    Tourist.find(@tour.tourist_id).update(tour_id: @tour.id) if @tour.valid?
  end

  def destroy
    @tour.destroy
    Tourist.find(@tour.tourist_id).update(tour_id: nil)
  end

  private

  def tour_params
    params.require(:tour).permit(:tour_starts, :tourist_id, :tour_duration_days, :tourbase_id)
  end

  def tour
    @tour = Tour.find(params[:id])
  end
end