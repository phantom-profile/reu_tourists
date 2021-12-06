class SwordsController < ApplicationController
  before_action :is_elder?, only: [:create, :destroy]
  before_action :sword, only: [:edit, :update, :destroy]

  def initialize
    super
    @new_sword = Sword.new
  end

  def index
    @swords = Sword.all.preload(:witcher, :sword_type)
  end

  def create
    @sword = Sword.create(sword_params)
  end

  def edit; end

  def update
    @sword.update(sword_params)
  end

  def destroy
    @sword.destroy
  end

  private

  def sword_params
    params.require(:sword).permit(:name, :sword_type_id, :min_damage, :max_damage)
  end

  def sword
    @sword = Sword.find(params[:id])
  end
end