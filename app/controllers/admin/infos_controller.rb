class Admin::InfosController < ApplicationController

  def new
    @info = Info.new
  end



  private


  def info_params
    params.require(:admin_info).permit(:title, :content, :img_url, :user_id)
  end

end
