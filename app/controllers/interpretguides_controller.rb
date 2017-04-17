class InterpretguidesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]

  def index
  end

  def info
    @infos = Info.all
  end

  def case
    @cases = Case.all
  end

  def service
    @services = Service.all
  end


end
