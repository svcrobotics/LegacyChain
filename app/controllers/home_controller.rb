class HomeController < ApplicationController
  def index
    @wallet_address = params[:address]
  end
end
