class EmployeesController < ApplicationController
  def index
  end

  def edit
  end

  def search
    @my_val = params[:q]
  end
end
