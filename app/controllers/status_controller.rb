# encoding: utf-8
class StatusController < ApplicationController
  before_filter :set_current_status, :except => :index
  
  def index
    @statuses = Status.order("date DESC")
  end
  
  def disappear
    @status.disappeared_at = Time.now
    @status.save!
    redirect_to root_path, :notice => "Solens bortkomst noterad"
  end
  
  def survived
    @status.date ||= Date.today
    @status.send "position#{params[:id]}=", Time.now
    @status.save!
    redirect_to root_path, :notice => "Solens överlevnad noterad"
  end
end
