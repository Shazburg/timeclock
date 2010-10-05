class TimeZonesController < ApplicationController
  before_filter :authenticate
  
  def index
    @time_zones = TimeZone.all
  end
  
  def show
    @time_zone = TimeZone.find(params[:id])
  end
  
  def new
    @time_zone = TimeZone.new
  end
  
  def create
    @time_zone = TimeZone.new(params[:time_zone])
    if @time_zone.save
      flash[:notice] = "Successfully created time zone."
      redirect_to @time_zone
    else
      render :action => 'new'
    end
  end
  
  def edit
    @time_zone = TimeZone.find(params[:id])
  end
  
  def update
    @time_zone = TimeZone.find(params[:id])
    if @time_zone.update_attributes(params[:time_zone])
      flash[:notice] = "Successfully updated time zone."
      redirect_to @time_zone
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @time_zone = TimeZone.find(params[:id])
    @time_zone.destroy
    flash[:notice] = "Successfully destroyed time zone."
    redirect_to time_zones_url
  end
end
