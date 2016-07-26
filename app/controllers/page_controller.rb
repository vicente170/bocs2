class PageController < ApplicationController
  
  before_action :authenticate_user!, only: [:contact,:about]
  
  def home
    @bocs = current_user.bocs.paginate(page: params[:page])
  end

  def about
  end

  def contact
  end
end
