class PunchesController < ApplicationController
	
	before_filter :authenticate, :except => [ :new, :show, :create ]
	
  def index
    @punches = Punch.all
    @employees = Employee.all
  end
  
  def show
    @punch = Punch.find(params[:id])
  end
  
  def new
    @punch = Punch.new
  end
  
  def create
    @punch = Punch.new(params[:punch])
    if @punch.save
      flash[:notice] = "Successfully created punch."
      redirect_to @punch
    else
      render :action => 'new'
    end
  end
  
  def edit
    @punch = Punch.find(params[:id])
  end
  
  def update
    @punch = Punch.find(params[:id])
    if @punch.update_attributes(params[:punch])
      flash[:notice] = "Successfully updated punch."
      redirect_to @punch
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @punch = Punch.find(params[:id])
    @punch.destroy
    flash[:notice] = "Successfully destroyed punch."
    redirect_to punches_url
  end
end
