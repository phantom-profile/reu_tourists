# frozen_string_literal: true

class RegionsController < ApplicationController
  before_action :is_elder?, except: :index
  before_action :region, only: %i[edit update destroy]

  def index
    @regions = Region.all
    @new_region = Region.new
  end

  def create
    @region = Region.create(region_params)
  end

  def edit; end

  def update
    @new_region = Region.new
    @region.update(region_params)
  end

  def destroy
    @region.destroy
  end

  private

  def region_params
    params.require(:region).permit(:nearest_city, :country, :country_code)
  end

  def region
    @region = Region.find(params[:id])
  end
end
