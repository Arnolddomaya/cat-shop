class ItemsController < ApplicationController
  before_action :set_item, only: [:show]
  def index
    @items = Item.all
  end

  def show
    if user_signed_in?
      @user_items = current_user.cart.items
    end

  end












  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(
         :title,
         :description,
         :price,
         :image_url)
    end
end
