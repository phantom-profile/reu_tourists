class WitchersController < ApplicationController
  before_action :is_elder?, only: [:create, :destroy]

  def index
    @witchers = Witcher.all
    @witcher = Witcher.new
  end

  def destroy
    @witcher = Witcher.find(params[:id])
    @witcher.destroy
  end

  def create
    @witcher = Witcher.create(witcher_params)
  end

  private

  def witcher_params
    cleaned_params = params.require(:witcher).permit(:name, :nickname, :age, :sword, :location, :school_id)
    cleaned_params[:sword] = Sword.find(cleaned_params[:sword])
    cleaned_params
  end
end