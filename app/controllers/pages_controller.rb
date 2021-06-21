class PagesController < ApplicationController
  def bookshelf
    @user = User.find(params[:id])
  end
end
