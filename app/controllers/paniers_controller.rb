class PaniersController < ApplicationController
  before_action :authenticate
  def index
    
  end




  def authenticate
    unless  user_signed_in?

      redirect_to new_user_session_path
      flash.now[:danger] = "Connectez vous avant d'acceder au panier!"
    end
  end





end
