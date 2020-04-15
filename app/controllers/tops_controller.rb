class TopsController < ApplicationController
  def index
    @shops = Shop.all
  end
end
