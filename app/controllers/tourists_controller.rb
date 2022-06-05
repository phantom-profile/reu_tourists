# frozen_string_literal: true

class TouristsController < ApplicationController
  before_action :is_elder?, except: :index
  before_action :tourist, only: %i[edit update destroy]

  def index
    @new_tourist = Tourist.new
    @tourists = Tourist.all
  end

  def create
    @tourist = Tourist.create(tourist_params)
  end

  def edit; end

  def update
    @new_tourist = Tourist.new
    @tourist.update(tourist_params)
  end

  def destroy
    @tourist.destroy
  end

  private

  def tourist_params
    params.require(:tourist).permit(:firstname, :lastname, :age, :email)
  end

  def tourist
    @tourist = Tourist.find(params[:id])
  end
end
