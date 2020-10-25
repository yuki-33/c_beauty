class TopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def about
    
  end

end
