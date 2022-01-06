class Admin::DashboardController < ApplicationController
  before_filter :authorize
  def show
    @products_count = Product.all.length
    @categories_count = Category.all.length
  end
end
