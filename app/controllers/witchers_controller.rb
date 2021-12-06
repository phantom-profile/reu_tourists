# frozen_string_literal: true

class WitchersController < ApplicationController
  before_action :is_elder?, except: :index
  before_action :witcher, only: %i[edit update destroy]

  def initialize
    super
    @new_witcher = Witcher.new
  end

  def index
    @witchers = Witcher.all.preload(:sword, :school)
  end

  def create
    @witcher = Witcher.create(witcher_params)
  end

  def edit; end

  def update
    @witcher.update(witcher_params)
  end

  def destroy
    @witcher.destroy
  end

  private

  def witcher_params
    cleaned_params = params.require(:witcher).permit(:name, :nickname, :age, :sword, :location, :school_id)
    cleaned_params[:sword] = Sword.find(cleaned_params[:sword])
    cleaned_params
  end

  def witcher
    @witcher = Witcher.find(params[:id])
  end
end
