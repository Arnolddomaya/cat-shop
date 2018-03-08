class PaniersController < ApplicationController
  before_action :authenticate
  def index
    #on recupère le contenue du pannier de current_user
    @items = current_user.cart.items
    @cart = current_user.cart
    # on recupère le nombre des item et le total
    total_p = 0
    @items.map{ |item| total_p+= item.price}
    @totals = [@items.length, total_p]
  end






  private
    def authenticate
      unless  user_signed_in?
        flash.now[:danger] = "Connectez vous avant d'acceder au panier!"
        redirect_to new_user_session_path
      end
    end





end
