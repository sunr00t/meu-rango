class TacoController < ApplicationController
  before_action :set_taco_service

  def index
    @foods = @taco_service.get_foods
  end

  def categories
    @categories = @taco_service.get_categories
  end

  private
  def set_taco_service
    @taco_service = TacoService.new
  end

end
