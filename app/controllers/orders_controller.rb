class OrdersController < ApplicationController
  before_action :authenticate

  def index
    @orders = current_user.orders


  end


  def create
    order = Order.new(title: 'order user #{current_user.id}')
    order.items = current_user.cart.items
    current_user.cart.items  = []
    current_user.orders << order

    flash[:success] = "Commande emise! "
    redirect_to orders_list_path
  end

  def destroy
    @item = Item.find(params[:item_id])
    current_user.cart.items.delete(@item)
    flash[:danger] = "Item retiré du pannier"
    redirect_to @item
  end





  private
    def authenticate
      unless  user_signed_in?
        flash.now[:danger] = "Connectez vous avant d'acceder a cette page!"
        redirect_to new_user_session_path
      end
    end
end
