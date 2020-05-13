class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :confirm, :inquiry, :favorite, :delete_favorite]

  def index
    # @shops = @category.shops
    @areas = Area.all
    @shop_search = ShopSearch.new(params.merge(category_key: params[:category_key]))
  end

  def search
    @shop_search = ShopSearch.new(params.merge(category_key: params[:category_key]))
    render 'index'
  end

  def show
    # @inquiry = @shop.inquiries.build
    @inquiry = session[:inquiry].present? ? @shop.inquiries.build(session[:inquiry]) : @shop.inquiries.build
  end

  def confirm
    @inquiry = @shop.inquiries.build(inquiry_params)
    session[:inquiry] = inquiry_params
  end

  def inquiry
    @inquiry = @shop.inquiries.build(session[:inquiry].merge(user_id: current_user.present? ? current_user.id : nil))
    if @inquiry.save
      BookMailer.send_when_booking(@inquiry).deliver
      AdminMailer.send_when_booking(@inquiry).deliver
      redirect_to shop_path(@shop), notice: 'Your booking has been sent.'
    else
      render "show", @inquiry
    end
  end

  def favorite
    @favorite = current_user.favorites.build(shop_id: params[:id])
    @favorite.save
    redirect_to shop_path(@shop), notice: 'Saved'
  end

  def delete_favorite
    @favorite = current_user.favorites.find_by(shop_id: params[:id])
    @favorite.destroy
    redirect_to shop_path(@shop), notice: 'deleted'
  end



  private

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
