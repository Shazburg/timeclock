class EmployeesController < ApplicationController
	before_filter :authenticate

  def index
    @employees = Employee.all()
  end
  
  def show
    @employee = Employee.find(params[:id])
  end
  
  def new
    @employee = Employee.new
  end
  
  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      flash[:notice] = "Successfully created employee."
      redirect_to @employee
    else
      render :action => 'new'
    end
  end
  
  def edit
    @employee = Employee.find(params[:id])
  end
  
  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(params[:employee])
      flash[:notice] = "Successfully updated employee."
      redirect_to @employee
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    flash[:notice] = "Successfully destroyed employee."
    redirect_to employees_url
  end
end
