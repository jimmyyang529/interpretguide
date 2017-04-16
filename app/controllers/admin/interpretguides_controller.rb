class Admin::InterpretguidesController < ApplicationController
  before_action :authenticate
  before_action :set_admin_post, only: [:show, :edit, :update, :destroy]
  respond_to :html


  def index
    @infos = Info.all
    @cases = Case.all
    @services = Service.all
  end

  def new
    @info = Info.new
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
