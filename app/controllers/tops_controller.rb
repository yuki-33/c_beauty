class TopsController < ApplicationController
  def index
    @category = Category.find_by(category_key: params[:category_key])
    @shops = @category.shops
    # @shops = Shop.all
  end
end
