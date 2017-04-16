class InterpretguidesController < ApplicationController
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
