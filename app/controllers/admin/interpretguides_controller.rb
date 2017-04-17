class Admin::InterpretguidesController < ApplicationController
  before_action :authenticate
  # layout "admin"


  def index
    @infos = Info.all
    @cases = Case.all
    @services = Service.all
  end

  def new
    @case = Case.new
    @service = Service.new
  end





  protected

  def authenticate
     authenticate_or_request_with_http_basic do |user_name, password|
         user_name == "username" && password == "password"
     end
  end
end
