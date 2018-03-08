class AddingController < ApplicationController
  before_action :authenticate



  def create
    @item = Item.find(params[:item_id])
    current_user.cart.items  <<  @item
    flash[:success] = "Bien ajouté au panier"
    redirect_to root_path
  end

  def destroy
    @item = Item.find(params[:item_id])
    current_user.cart.items.delete(@item)
    flash[:danger] = "Item retiré du pannier"
    redirect_to root_path
  end





  private
    def authenticate
      unless  user_signed_in?
        flash.now[:danger] = "Connectez vous avant d'acceder a cette page!"
        redirect_to new_user_session_path
      end
    end

end
