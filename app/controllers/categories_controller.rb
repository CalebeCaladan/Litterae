class CategoriesController < ApplicationController
  before_filter :find_model

  def index
    @categories = Category.includes(:wordings).all
  end

  def show
    @category = Category.find(params[:id])
  end

  private
  def find_model
    @category = Category.find(params[:id]) if params[:id]
  end
end