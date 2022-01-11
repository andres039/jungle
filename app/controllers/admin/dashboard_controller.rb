class Admin::DashboardController < ApplicationController
   http_basic_authenticate_with name: 'Jungle', password: 'book'
  before_filter :authorize
  def show
    @products_count = Product.all.length
    @categories_count = Category.all.length
  end
end
