class SwordsController < ApplicationController
  before_action :is_elder?, only: [:create, :destroy]

  def index
    @swords = Sword.all.preload(:witcher, :sword_type)
    @sword = Sword.new
  end

  def destroy
    @sword = Sword.find(params[:id])
    @sword.destroy
  end

  def create
    @sword = Sword.create(sword_params)
  end

  private

  def sword_params
    params.require(:sword).permit(:name, :sword_type_id, :min_damage, :max_damage)
  end
end