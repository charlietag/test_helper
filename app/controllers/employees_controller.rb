class EmployeesController < ApplicationController
  def index
  end

  def edit
  end

  def search
    #render plain: @my_val.inspect
    #@employee = Employee.new(name: @my_val)

    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to employees_index_url, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @employee}
      else
        format.html { render :edit}
        format.json { render json: @empolyee.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def employee_params
      params.require(:employee).permit(:name)
    end
end
