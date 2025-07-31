class DashboardController < ApplicationController
  def index
    @address = params[:address]
  end
end
