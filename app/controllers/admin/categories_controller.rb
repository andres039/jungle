class Admin::CategoriesController < ApplicationController
  before_filter :authorize

  def index
    @categories = Category.order(id: :desc).all
  end

  def new
    @categories= Category.new
  end

  def create
    @categories= Category.new(categories_params)

    if @categories.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  private

  def categories_params
    params.require(:category).permit(
      :name,
      :created_at,
      :updated_at
    )
  end
end
