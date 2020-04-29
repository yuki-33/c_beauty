class Admin::ShopsController < Admin::ApplicationController
  before_action :set_shop, only: [:edit, :update, :destroy, :inquiry]

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shop_path(@shop)
    else
      render "new"
    end
  end

  def new
    @shop = Shop.new
    @shop.menus.build
    # @work.director_id = params[:director_id] if params[:director_id].present?
  end

  def edit
    @shop.menus.build if @shop.menus.blank?
  end

  def update
    if @shop.update(shop_params)
      redirect_to shop_path(@shop)
    else
      render "edit"
    end
  end

  def destroy
    @shop.destroy
    redirect_to shops_category_path
  end


  private

  def set_category
    @category = Category.find_by(category_key: params[:category_key])
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params[:shop].permit(
      :name,
      :shop_name_katakana,
      :area_id,
      :adress,
      :email,
      :website,
      :tel,
      :regular_closed,
      :business_hour,
      :note,
      :introduction,
      :about_us,
      :image,
      :image_top,
      :image_2,
      :image_3,
      :image_4,
      :image_owner,
      :image_employee,
      :owner_name,
      :owner_name_katakana,
      :about_owner,
      :employee_name,
      :employee_name_katakana,
      :about_employee,
      :facebook,
      :instagram,
      category_ids: [],
      menus_attributes: [
        :id,
        :menu,
        :price
      ]
    )
  end

  def inquiry_params
    params[:inquiry].permit(
      :name,
      :email,
      :tel,
      :datetime_1,
      :datetime_2,
      :datetime_3,
      :menu_id,
      :note
    )
  end

end