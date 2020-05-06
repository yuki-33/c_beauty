class ShopSearch
  attr_reader :parameters

  def initialize(parameters)
    @parameters = parameters
  end

  def search
    @category = Category.find_by(category_key: parameters[:category_key])
    @search ||= @category.shops.ransack(parameters[:q])
  end

  def shops
    @shops ||= search.result.order(id: :desc)
  end

end
