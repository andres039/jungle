class Admin::DashboardController < ApplicationController
  def show
    @products_count = Product.all.length
    @categories_count = Category.all.length
  end
end
